--
-- Copyright (c) 2008 Red Hat, Inc.
--
-- This software is licensed to you under the GNU General Public License,
-- version 2 (GPLv2). There is NO WARRANTY for this software, express or
-- implied, including the implied warranties of MERCHANTABILITY or FITNESS
-- FOR A PARTICULAR PURPOSE. You should have received a copy of GPLv2
-- along with this software; if not, see
-- http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
--
-- Red Hat trademarks are not licensed under GPLv2. No permission is
-- granted to use or replicate Red Hat trademarks that are incorporated
-- in this software or its documentation.
--
--
--
--

create index rhn_snc_pid_idx
	on rhnServerNeededCache(package_id)
	tablespace [[128m_tbs]]
	nologging;

create index rhn_snc_sid_idx
	on rhnServerNeededCache(server_id)
	tablespace [[128m_tbs]]
	nologging;

create index rhn_snc_eid_idx
	on rhnServerNeededCache(errata_id)
	tablespace [[128m_tbs]]
	nologging;

create index rhn_snc_speid_idx
        on rhnServerNeededCache(server_id, package_id, errata_id)
        parallel
        tablespace [[128m_tbs]]
        nologging;
