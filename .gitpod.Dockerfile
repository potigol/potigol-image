FROM gitpod/workspace-full

RUN sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/potigol/potigol/releases/download/1.0.0-RC1/potigol.zip) > /usr/local/lib/potigol.zip'

RUN sudo sh -c '(echo "#!/usr/bin/env sh" && unzip /usr/local/lib/potigol.zip -d /usr/local/lib/potigol/)'

RUN echo -e '#!/bin/bash\n\njava -jar /usr/local/lib/potigol/potigol.jar $* 2> /dev/null' | sudo tee /usr/local/bin/potigol

RUN sudo chmod +x /usr/local/bin/potigol
