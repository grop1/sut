package se.test.web;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import se.test.domain.Memo;

@RequestMapping("/memoes")
@Controller
@RooWebScaffold(path = "memoes", formBackingObject = Memo.class)
public class MemoController {
}
