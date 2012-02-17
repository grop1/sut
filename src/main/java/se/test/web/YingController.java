package se.test.web;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import se.test.domain.Ying;

@RequestMapping("/yings")
@Controller
@RooWebScaffold(path = "yings", formBackingObject = Ying.class)
public class YingController {
}
