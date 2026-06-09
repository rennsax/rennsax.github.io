---
layout: page
title: 实时汇率查询
permalink: /tools/exchange-rate/
toc: false
description: 查询日元、港币、人民币、美元之间的最新汇率，并进行金额转换。
---

<div class="exchange-tool" data-exchange-tool>
  <section class="exchange-panel" aria-label="Currency converter">
    <div class="exchange-grid">
      <label class="exchange-field">
        <span>金额</span>
        <input data-amount type="number" inputmode="decimal" min="0" step="0.01" value="100" aria-label="Amount">
      </label>

      <label class="exchange-field">
        <span>从</span>
        <select data-from aria-label="Source currency">
          <option value="JPY" selected>日元 JPY</option>
          <option value="HKD">港币 HKD</option>
          <option value="CNY">人民币 CNY</option>
          <option value="USD">美元 USD</option>
        </select>
      </label>

      <button class="exchange-swap" type="button" data-swap aria-label="Swap currencies" title="互换币种">
        <i class="fas fa-arrow-right-arrow-left"></i>
      </button>

      <label class="exchange-field">
        <span>到</span>
        <select data-to aria-label="Target currency">
          <option value="JPY">日元 JPY</option>
          <option value="HKD">港币 HKD</option>
          <option value="CNY" selected>人民币 CNY</option>
          <option value="USD">美元 USD</option>
        </select>
      </label>
    </div>

    <div class="exchange-result" aria-live="polite">
      <span data-result>正在获取汇率...</span>
      <small data-formula></small>
    </div>

    <div class="exchange-actions">
      <button class="exchange-refresh" type="button" data-refresh>
        <i class="fas fa-rotate"></i>
        <span>刷新汇率</span>
      </button>
      <span class="exchange-status" data-status>连接汇率服务中</span>
    </div>
  </section>

  <section class="exchange-panel" aria-label="Common exchange rates">
    <div class="exchange-heading">
      <h2>常用交叉汇率</h2>
      <span data-updated>更新时间待获取</span>
    </div>

    <div class="exchange-table-wrap">
      <table class="exchange-table">
        <thead>
          <tr>
            <th scope="col">1 单位</th>
            <th scope="col">JPY</th>
            <th scope="col">HKD</th>
            <th scope="col">CNY</th>
            <th scope="col">USD</th>
          </tr>
        </thead>
        <tbody data-rate-table>
          <tr>
            <td colspan="5">正在加载...</td>
          </tr>
        </tbody>
      </table>
    </div>
  </section>
</div>

<style>
  .exchange-tool {
    display: grid;
    gap: 1rem;
    margin-top: 1.5rem;
  }

  .exchange-panel {
    border: 1px solid var(--main-border-color);
    border-radius: 8px;
    background: var(--card-bg);
    box-shadow: var(--card-shadow);
    padding: 1rem;
  }

  .exchange-grid {
    display: grid;
    grid-template-columns: minmax(9rem, 1.2fr) minmax(8rem, 1fr) 2.75rem minmax(8rem, 1fr);
    gap: 0.75rem;
    align-items: end;
  }

  .exchange-field {
    display: grid;
    gap: 0.35rem;
    margin: 0;
    color: var(--label-color);
    font-size: 0.9rem;
    font-weight: 600;
    line-height: 1.2;
  }

  .exchange-field input,
  .exchange-field select {
    width: 100%;
    min-height: 2.75rem;
    border: 1px solid var(--main-border-color);
    border-radius: 6px;
    background: var(--main-bg);
    color: var(--text-color);
    padding: 0.55rem 0.7rem;
    font: inherit;
  }

  .exchange-field input:focus,
  .exchange-field select:focus {
    border-color: var(--input-focus-border-color);
    outline: 2px solid rgba(0, 86, 178, 0.18);
    outline-offset: 1px;
  }

  .exchange-swap,
  .exchange-refresh {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    border: 1px solid var(--btn-border-color);
    border-radius: 6px;
    background: var(--button-bg);
    color: var(--text-color);
    min-height: 2.75rem;
    transition: border-color 0.15s ease, color 0.15s ease;
  }

  .exchange-swap {
    width: 2.75rem;
  }

  .exchange-refresh {
    gap: 0.45rem;
    padding: 0.45rem 0.75rem;
  }

  .exchange-swap:hover,
  .exchange-refresh:hover {
    border-color: var(--link-color);
    color: var(--link-color);
  }

  .exchange-result {
    display: grid;
    gap: 0.25rem;
    margin-top: 1rem;
    padding: 1rem;
    border-radius: 8px;
    background: var(--prompt-info-bg);
    color: var(--text-color);
  }

  .exchange-result span {
    font-size: 1.4rem;
    font-weight: 700;
    line-height: 1.35;
  }

  .exchange-result small,
  .exchange-status,
  .exchange-heading span {
    color: var(--text-muted-color);
    font-size: 0.9rem;
  }

  .exchange-actions,
  .exchange-heading {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 0.75rem;
    margin-top: 1rem;
  }

  .exchange-heading {
    margin-top: 0;
    margin-bottom: 0.75rem;
  }

  .exchange-heading h2 {
    margin: 0;
    font-size: 1.1rem;
  }

  .exchange-table-wrap {
    overflow-x: auto;
  }

  .exchange-table {
    width: 100%;
    min-width: 30rem;
    border-collapse: collapse;
    font-size: 0.95rem;
  }

  .exchange-table th,
  .exchange-table td {
    padding: 0.65rem 0.6rem;
    border-bottom: 1px solid var(--main-border-color);
    text-align: right;
    white-space: nowrap;
  }

  .exchange-table th:first-child,
  .exchange-table td:first-child {
    text-align: left;
    color: var(--label-color);
    font-weight: 600;
  }

  @media (max-width: 767px) {
    .exchange-grid {
      grid-template-columns: 1fr;
    }

    .exchange-swap {
      justify-self: start;
      transform: rotate(90deg);
    }

    .exchange-actions,
    .exchange-heading {
      align-items: flex-start;
      flex-direction: column;
    }

    .exchange-result span {
      font-size: 1.15rem;
    }
  }
</style>

<script>
  (() => {
    const root = document.querySelector('[data-exchange-tool]');
    if (!root) {
      return;
    }

    const currencies = {
      JPY: { label: '日元', symbol: 'JPY', precision: 0 },
      HKD: { label: '港币', symbol: 'HKD', precision: 2 },
      CNY: { label: '人民币', symbol: 'CNY', precision: 2 },
      USD: { label: '美元', symbol: 'USD', precision: 2 }
    };
    const currencyCodes = Object.keys(currencies);
    const endpoint = 'https://open.er-api.com/v6/latest/USD';
    const amountInput = root.querySelector('[data-amount]');
    const fromSelect = root.querySelector('[data-from]');
    const toSelect = root.querySelector('[data-to]');
    const swapButton = root.querySelector('[data-swap]');
    const refreshButton = root.querySelector('[data-refresh]');
    const resultEl = root.querySelector('[data-result]');
    const formulaEl = root.querySelector('[data-formula]');
    const statusEl = root.querySelector('[data-status]');
    const updatedEl = root.querySelector('[data-updated]');
    const tableBody = root.querySelector('[data-rate-table]');
    let rates = null;

    const formatterCache = new Map();

    function getFormatter(code, options = {}) {
      const key = `${code}:${options.maximumFractionDigits ?? ''}`;
      if (!formatterCache.has(key)) {
        formatterCache.set(
          key,
          new Intl.NumberFormat('zh-CN', {
            maximumFractionDigits: options.maximumFractionDigits ?? currencies[code].precision,
            minimumFractionDigits: options.minimumFractionDigits ?? 0
          })
        );
      }
      return formatterCache.get(key);
    }

    function formatAmount(value, code, options) {
      return `${getFormatter(code, options).format(value)} ${code}`;
    }

    function rateBetween(from, to) {
      if (!rates || !rates[from] || !rates[to]) {
        return null;
      }
      return rates[to] / rates[from];
    }

    function renderConversion() {
      const from = fromSelect.value;
      const to = toSelect.value;
      const amount = Number.parseFloat(amountInput.value);
      const rate = rateBetween(from, to);

      if (!Number.isFinite(amount)) {
        resultEl.textContent = '请输入有效金额';
        formulaEl.textContent = '';
        return;
      }

      if (!rate) {
        resultEl.textContent = '汇率暂不可用';
        formulaEl.textContent = '请稍后刷新，或检查网络连接。';
        return;
      }

      const converted = amount * rate;
      resultEl.textContent = `${formatAmount(amount, from)} = ${formatAmount(converted, to)}`;
      formulaEl.textContent = `1 ${from} = ${formatAmount(rate, to, { maximumFractionDigits: 6 })}`;
    }

    function renderTable() {
      if (!rates) {
        return;
      }

      tableBody.innerHTML = currencyCodes
        .map((from) => {
          const cells = currencyCodes
            .map((to) => {
              if (from === to) {
                return '<td>1</td>';
              }
              const rate = rateBetween(from, to);
              return `<td>${formatAmount(rate, to, { maximumFractionDigits: 6 })}</td>`;
            })
            .join('');

          return `<tr><td>${currencies[from].label} ${from}</td>${cells}</tr>`;
        })
        .join('');
    }

    function renderUpdated(data) {
      const timestamp = data.time_last_update_unix
        ? new Date(data.time_last_update_unix * 1000)
        : new Date();
      updatedEl.textContent = `数据更新时间：${new Intl.DateTimeFormat('zh-CN', {
        dateStyle: 'medium',
        timeStyle: 'short'
      }).format(timestamp)}`;
    }

    async function loadRates() {
      statusEl.textContent = '正在刷新汇率';
      refreshButton.disabled = true;

      try {
        const response = await fetch(endpoint, { cache: 'no-store' });
        if (!response.ok) {
          throw new Error(`HTTP ${response.status}`);
        }

        const data = await response.json();
        if (data.result !== 'success' || !data.rates) {
          throw new Error('Unexpected response');
        }

        rates = Object.fromEntries(currencyCodes.map((code) => [code, data.rates[code]]));
        renderUpdated(data);
        renderTable();
        renderConversion();
        statusEl.textContent = '已获取最新可用汇率';
      } catch (error) {
        statusEl.textContent = '汇率服务暂时不可用';
        resultEl.textContent = '无法获取实时汇率';
        formulaEl.textContent = '请稍后重试。';
      } finally {
        refreshButton.disabled = false;
      }
    }

    amountInput.addEventListener('input', renderConversion);
    fromSelect.addEventListener('change', renderConversion);
    toSelect.addEventListener('change', renderConversion);
    refreshButton.addEventListener('click', loadRates);
    swapButton.addEventListener('click', () => {
      const from = fromSelect.value;
      fromSelect.value = toSelect.value;
      toSelect.value = from;
      renderConversion();
    });

    loadRates();
  })();
</script>
