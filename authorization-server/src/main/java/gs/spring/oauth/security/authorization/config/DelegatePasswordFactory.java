package gs.spring.oauth.security.authorization.config;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.DelegatingPasswordEncoder;

import java.util.Collections;

class DelegatePasswordFactory {
    static DelegatingPasswordEncoder getDelegatingPassword() {
        final String encodingId = "bcrypt";
        final int strLength = 10;

        final DelegatingPasswordEncoder delegatingPasswordEncoder =
                new DelegatingPasswordEncoder(encodingId, Collections.singletonMap(encodingId, new BCryptPasswordEncoder()));

        delegatingPasswordEncoder.setDefaultPasswordEncoderForMatches(new BCryptPasswordEncoder(strLength));
        return delegatingPasswordEncoder;
    }
}