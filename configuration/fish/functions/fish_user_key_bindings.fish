function fish_user_key_bindings
  fzf_key_bindings
  fish_vi_key_bindings
  for mode in insert default visual
    bind -M $mode \cf forward-char
  end

  bind -M insert \cn fzf-bazel-target
  bind -M insert \cb fzf-git-branch
end
