---
layout: page
title: Tools
permalink: /tools/
toc: false
---

<section class="tools-index" aria-label="Tools">
  <a class="tool-entry" href="{{ '/tools/exchange-rate/' | relative_url }}">
    <span class="tool-entry__icon" aria-hidden="true">
      <i class="fas fa-money-bill-transfer"></i>
    </span>
    <span class="tool-entry__body">
      <strong>实时汇率查询</strong>
      <span>查询日元、港币、人民币、美元之间的最新汇率，并进行金额转换。</span>
    </span>
  </a>

  <a class="tool-entry" href="{{ '/tools/nightreign-quick-ref/' | relative_url }}">
    <span class="tool-entry__icon" aria-hidden="true">
      <i class="fas fa-book-open"></i>
    </span>
    <span class="tool-entry__body">
      <strong>Nightreign Quick Ref</strong>
      <span>Elden Ring Nightreign 的速查笔记与数据参考。</span>
    </span>
  </a>
</section>

<style>
  .tools-index {
    display: grid;
    gap: 1rem;
    margin-top: 1.5rem;
  }

  .content .tools-index a.tool-entry {
    display: flex;
    gap: 1rem;
    align-items: center;
    padding: 1rem;
    border: 1px solid var(--main-border-color);
    border-radius: 8px;
    background: var(--card-bg);
    box-shadow: var(--card-shadow);
    color: var(--text-color) !important;
    text-decoration: none !important;
    transition:
      background-color 0.15s ease,
      border-color 0.15s ease,
      box-shadow 0.15s ease,
      transform 0.15s ease;
  }

  .content .tools-index a.tool-entry:hover,
  .content .tools-index a.tool-entry:focus-visible {
    color: var(--text-color) !important;
    text-decoration: none !important;
    border-color: var(--link-color);
    border-bottom-color: var(--link-color) !important;
    background: var(--sidebar-hover-bg);
    box-shadow: 0 0 0 3px rgba(0, 86, 178, 0.12), var(--card-shadow);
    transform: translateY(-1px);
    outline: none;
  }

  .content .tools-index a.tool-entry:hover .tool-entry__icon,
  .content .tools-index a.tool-entry:focus-visible .tool-entry__icon {
    background: var(--link-color);
    color: var(--main-bg);
  }

  .tool-entry__icon {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    flex: 0 0 2.75rem;
    width: 2.75rem;
    height: 2.75rem;
    border-radius: 8px;
    background: rgba(0, 86, 178, 0.1);
    color: var(--link-color);
    transition: background-color 0.15s ease, color 0.15s ease;
  }

  .tool-entry__body {
    display: grid;
    gap: 0.2rem;
  }

  .tool-entry__body span {
    color: var(--text-muted-color);
    font-size: 0.95rem;
    line-height: 1.5;
  }

  .content .tools-index a.tool-entry:hover strong,
  .content .tools-index a.tool-entry:focus-visible strong {
    color: var(--text-color) !important;
  }

  .content .tools-index a.tool-entry:hover .tool-entry__body span,
  .content .tools-index a.tool-entry:focus-visible .tool-entry__body span {
    color: var(--text-muted-color) !important;
  }
</style>
