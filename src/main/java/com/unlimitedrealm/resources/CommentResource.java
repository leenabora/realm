package com.unlimitedrealm.resources;

import com.unlimitedrealm.domain.Comment;
import com.unlimitedrealm.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping("/comments.htm")
public class CommentResource {
    @Autowired
    CommentService commentService;

    @RequestMapping(method = POST)
    public String saveComment(Comment comment, ModelMap model) {
        comment.setPublish(false);
        commentService.save(comment);
        model.put("showMessage", true);
        return "redirect:/products/" + comment.getSku() + ".htm";
    }


}
