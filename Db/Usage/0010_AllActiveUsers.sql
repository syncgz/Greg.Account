select 
* 
from td_user u
join tc_application_user au on u.td_user_id = au.td_user_id
join td_application a on au.td_application_id = a.td_application_id
join tdc_user_status us on u.tdc_user_status_id = us.tdc_user_status_id
join tc_user_role ur on u.td_user_id = ur.td_user_id 
join td_role r on ur.td_role_id = r.td_role_id
join tc_role_claim rc on r.td_role_id = rc.td_role_id
join td_claim c on rc.td_claim_id = c.td_claim_id
where
u.Is_active = 1 and au.Is_active = 1 and a.Is_active = 1 and us.Is_active = 1 and ur.Is_active = 1 and
r.Is_active = 1 and rc.Is_active = 1 and c.Is_active = 1