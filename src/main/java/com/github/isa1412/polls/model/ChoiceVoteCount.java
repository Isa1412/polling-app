package com.github.isa1412.polls.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ChoiceVoteCount {

    private Long choiceId;
    private Long voteCount;

    public ChoiceVoteCount(Long choiceId, Long voteCount) {
        this.choiceId = choiceId;
        this.voteCount = voteCount;
    }
}
