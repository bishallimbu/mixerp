﻿CREATE VIEW office.counter_scrud_view
AS
SELECT
	office.counters.counter_id,
	office.stores.store_code,
	office.stores.store_name,
	office.cash_repositories.cash_repository_code,
	office.cash_repositories.cash_repository_name,
	office.counters.counter_code,
	office.counters.counter_name
FROM office.counters
INNER JOIN office.stores
ON office.counters.store_id=office.stores.store_id
INNER JOIN office.cash_repositories
ON office.counters.cash_repository_id=office.cash_repositories.cash_repository_id;