<graphjs-group-settings class="box">
    <div class="warning" if={failMessages.length > 0 || successMessages.length > 0}>
        <ul if={failMessages.length > 0} class="fail">
            <li each={failMessage in failMessages}>{failMessage}</li>
        </ul>
        <ul if={successMessages.length > 0} class="success">
            <li each={successMessage in successMessages}>{successMessage}</li>
        </ul>
    </div>
    <div class="content">
        <a ref="uploadWidget" class="cover">
            <img src={group && group.cover ? group.cover : 'lib/images/covers/group.png'} />
        </a>
        <form>
            <input ref="title" type="text" placeholder="Enter group title" value={group ? group.title : ''} />
            <input ref="description" type="text" placeholder="Describe your group" value={group ? group.description : ''} />
            <button ref="submit" onclick={handleInformationSubmit}>Update Group</button>
        </form>
    </div>
    <style type="less">
        @import '../styles/variables.less';
        @import '../styles/mixins.less';
        @import '../styles/options.less';
        @import '../styles/components/group-settings.less';
    </style>
    <script>
        import getGroup from '../scripts/getGroup.js';
        import setGroupCover from '../scripts/setGroupCover.js';
        import setGroupTitle from '../scripts/setGroupTitle.js';
        import setGroupDescription from '../scripts/setGroupDescription.js';
        import showAlert from '../scripts/showAlert.js';
        import '../vendor/cloudinary/upload-widget.js';

        this.id = opts.id;
        this.failMessages = [];
        this.successMessages = [];

        this.on('before-mount', function() {
            this.handleInformation(opts.id);
        });
        this.on('mount', function() {
            let self = this;
            this.refs.uploadWidget.addEventListener("click", function() {
                cloudinary.openUploadWidget({
                    cloud_name: 'graphjs',
                    upload_preset: 't8vl6sxm',
                    multiple: false,
                    cropping: 'server',
                    cropping_aspect_ratio: 16 / 9,
                    cropping_coordinates_mode: 'custom',
                    theme: 'minimal'
                },
                function(error, result) {
                    let failMessage = 'Cover photo couldn\'t be set.';
                    let successMessage = 'Cover photo has been set successfully.';
                    if(result) {
                        setGroupCover(self.id, result[0].url, function(response) {
                            if(response.success) {
                                self.group.cover = result[0].url;
                                self.failMessages.includes(failMessage) && self.failMessages.splice(self.failMessages.indexOf(failMessage), 1);
                                self.successMessages.includes(successMessage) || self.successMessages.push(successMessage);
                                self.update();
                                self.parent.tags.hasOwnProperty('graphjs-group-header') && self.parent.tags['graphjs-group-header'].updateInformation();
                            } else {
                                self.successMessages.includes(successMessage) && self.successMessages.splice(self.successMessages.indexOf(successMessage), 1);
                                self.failMessages.includes(failMessage) || self.failMessages.push(failMessage);
                                self.update();
                            }
                        });
                        self.update();
                    }
                    if(error) {
                        self.successMessages.includes(successMessage) && self.successMessages.splice(self.successMessages.indexOf(successMessage), 1);
                        self.failMessages.includes(failMessage) || self.failMessages.push(failMessage);
                        self.update();
                    }
                });
            }, false);
        });

        this.handleInformation = (id) => {
            let self = this;
            getGroup(id, function(response) {
                if(response.success) {
                    self.group = response.group;
                    self.update();
                } else {
                    //Handle errors
                }
            });
        }
        this.checkTitleMinimumLength = () => {
            let titleMinimumLengthLimit = 2;
            let failMessage = 'Title must be ' + titleMinimumLengthLimit + ' characters minimum!';
            if(this.refs.title.value.length >= titleMinimumLengthLimit) {
                this.refs.title.classList.remove('error');
                this.failMessages.includes(failMessage) && this.failMessages.splice(this.failMessages.indexOf(failMessage), 1);
                return true;
            } else {
                this.refs.title.classList.add('error');
                this.failMessages.includes(failMessage) || this.failMessages.push(failMessage);
                return false;
            }
        }
        this.checkTitleMaximumLength = () => {
            let titleMaximumLengthLimit = 80;
            let failMessage = 'Title must be ' + titleMaximumLengthLimit + ' characters maximum!';
            if(this.refs.title.value.length <= titleMaximumLengthLimit) {
                this.refs.title.classList.remove('error');
                this.failMessages.includes(failMessage) && this.failMessages.splice(this.failMessages.indexOf(failMessage), 1);
                return true;
            } else {
                this.refs.title.classList.add('error');
                this.failMessages.includes(failMessage) || this.failMessages.push(failMessage);
                return false;
            }
        }
        this.checkDescriptionMaximumLength = () => {
            let descriptionMaximumLengthLimit = 255;
            let failMessage = 'Description must be ' + descriptionMaximumLengthLimit + ' characters maximum!';
            if(this.refs.description.value.length <= descriptionMaximumLengthLimit) {
                this.refs.description.classList.remove('error');
                this.failMessages.includes(failMessage) && this.failMessages.splice(this.failMessages.indexOf(failMessage), 1);
                return true;
            } else {
                this.refs.description.classList.add('error');
                this.failMessages.includes(failMessage) || this.failMessages.push(failMessage);
                return false;
            }
        }
        this.validateInformation = () => {
            let validTitleMinimumLength = this.checkTitleMinimumLength();
            let validTitleMaximumLength = this.checkTitleMaximumLength();
            let validDescriptionMaximumLength = this.checkDescriptionMaximumLength();
            if(
                validTitleMinimumLength && validTitleMaximumLength && // Title
                validDescriptionMaximumLength // Description
            ) {
                return true;
            } else {
                this.refs.submit.classList.remove('loading');
                return false;
            }
        }
        this.handleInformationSubmit = (event) => {
            event.preventDefault();
            let self = this;
            self.refs.submit.classList.remove('loading');
            let title = self.refs.title.value;
            let description = self.refs.description.value;
            self.refs.title.className = '';
            self.refs.description.className = '';
            self.failMessages = [];
            self.successMessages = [];
        	if(self.validateInformation()) {
                if(title != self.group.title) {
                    setGroupTitle(
                        self.id,
                        title,
                        function(response) {
                            let failMessage = 'Title couldn\'t be set.';
                            let successMessage = 'Title has been set successfully.';
                            if(response.success) {
                                self.group.title = title;
                                self.refs.title.classList.remove('error');
                                self.refs.title.classList.add('success');
                                self.failMessages.includes(failMessage) && self.failMessages.splice(self.failMessages.indexOf(failMessage), 1);
                                self.successMessages.includes(successMessage) || self.successMessages.push(successMessage);
                                self.refs.submitPassword.classList.remove('loading');
                                self.update();
                                self.parent.tags.hasOwnProperty('graphjs-group-header') && self.parent.tags['graphjs-group-header'].updateInformation();
                            } else {
                                self.refs.title.classList.remove('success');
                                self.refs.title.classList.add('error');
                                self.successMessages.includes(successMessage) && self.successMessages.splice(self.successMessages.indexOf(successMessage), 1);
                                self.failMessages.includes(failMessage) || self.failMessages.push(failMessage);
                                self.refs.submitPassword.classList.remove('loading');
                                self.update();
                            }
                        }
                    );
                } else {
                    let failMessage = 'Title couldn\'t be set.';
                    let successMessage = 'Title has been set successfully.';
                    self.refs.title.classList.remove('error');
                    self.refs.title.classList.add('success');
                    self.failMessages.includes(failMessage) && self.failMessages.splice(self.failMessages.indexOf(failMessage), 1);
                    self.successMessages.includes(successMessage) || self.successMessages.push(successMessage);
                    self.refs.submitPassword.classList.remove('loading');
                    self.update();
                }
                if(description != self.group.description) {
                    setGroupDescription(
                        self.id,
                        description,
                        function(response) {
                            let failMessage = 'Description couldn\'t be set.';
                            let successMessage = 'Description has been set successfully.';
                            if(response.success) {
                                self.group.description = description;
                                self.refs.description.classList.remove('error');
                                self.refs.description.classList.add('success');
                                self.failMessages.includes(failMessage) && self.failMessages.splice(self.failMessages.indexOf(failMessage), 1);
                                self.successMessages.includes(successMessage) || self.successMessages.push(successMessage);
                                self.refs.submitPassword.classList.remove('loading');
                                self.update();
                                self.parent.tags.hasOwnProperty('graphjs-group-header') && self.parent.tags['graphjs-group-header'].updateInformation();
                            } else {
                                self.refs.description.classList.remove('success');
                                self.refs.description.classList.add('error');
                                self.successMessages.includes(successMessage) && self.successMessages.splice(self.successMessages.indexOf(successMessage), 1);
                                self.failMessages.includes(failMessage) || self.failMessages.push(failMessage);
                                self.refs.submitPassword.classList.remove('loading');
                                self.update();
                            }
                        }
                    );
                } else {
                    let failMessage = 'Description couldn\'t be set.';
                    let successMessage = 'Description has been set successfully.';
                    self.refs.description.classList.remove('error');
                    self.refs.description.classList.add('success');
                    self.failMessages.includes(failMessage) && self.failMessages.splice(self.failMessages.indexOf(failMessage), 1);
                    self.successMessages.includes(successMessage) || self.successMessages.push(successMessage);
                    self.refs.submitPassword.classList.remove('loading');
                    self.update();
                }
            }
        }
    </script>
</graphjs-group-settings>