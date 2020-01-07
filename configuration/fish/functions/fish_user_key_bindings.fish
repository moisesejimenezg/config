function fish_user_key_bindings
  for mode in insert default visual
    bind -M $mode \cf forward-char
  end
  fzf_key_bindings

  bind -M insert \cn fzf-bazel-target
  bind -M insert \cb fzf-git-branch
end

