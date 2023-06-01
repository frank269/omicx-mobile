class ApiConstants {
  static const BASE_API = 'crm-dev.metechvn.com';
  static const AUTHENTICATE_PATH = 'api/TokenAuth/Authenticate';
  static const DASHBOARD_AGENT_INBOUND_PATH =
      'api/services/app/AgentTask/LoadAgentInboundCall';
  static const DASHBOARD_AGENT_OUTBOUND_PATH =
      'api/services/app/AgentTask/LoadAgentOutboundCall';
  static const DASHBOARD_AGENT_TASK_PATH =
      'api/services/app/AgentTask/LoadAgentTask';
  static const DASHBOARD_AGENT_CLOSED_TICKET_PATH =
      'api/services/app/AgentTask/LoadClosedTicketAgent';

  static const CALL_HISTORY_PATH = 'reporting/tenant/call/get-list';
  static const GET_MEDIA_PATH = 'media/get-urls';

  static const GET_AGENT_PATH = 'api/services/app/GlobalService/GetAgents';

  static const TICKET_LOAD_PATH = 'api/services/app/Ticket/LoadTicket';
  static const GET_TICKET_DETAIL_PATH =
      'api/services/app/Ticket/GetDetailTicket';
  static const GET_TOTAL_CALL_SCORE_PATH =
      'api/services/app/Ticket/GetTotalCallScore';

  static const CONTACT_LIST_PATH =
      'api/services/app/Contact/SearchAllListContact';
  static const CONTACT_BY_ID_PATH = 'api/services/app/Contact/GetContactById';

  static const GET_USER_BYID_PATH = 'api/services/app/User/GetUserById';
  static const GET_HISTORY_CONTACT_IN_TICKET_PATH =
      'api/services/app/HistoryContactDetail/GetHistoryContactInTicket';
  static const GET_CONTACT_RELATION_PATH =
      'api/services/app/Ticket/GetContactRelation';

  static const CREATE_TICKET_PATH = 'api/services/app/Ticket/CreateTicket';
  static const CREATE_CONTACT_PATH = 'api/services/app/Contact/CreateContact';

  static const UPDATE_DETAIL_TICKET_PATH =
      'api/services/app/Ticket/UpdateDetailTicket';
  static const UPDATE_GENERAL_CONTACT_PATH =
      '/api/services/app/Contact/UpdateGeneralContact';
  static const UPDATE_CONTACT_INFO_PATH =
      'api/services/app/Contact/UpdateContact';
  static const GET_CONTACT_IN_TICKET_PATH =
      'api/services/app/HistoryContactDetail/GetHistoryContactInTicket';

//api for call
  static const CREATE_CONTACT_HISTORY_PATH =
      'api/services/app/Contact/CreateContactHistory';
  static const CHANGE_MISS_CALL_TO_INBOUND_PATH =
      'api/services/app/Contact/ChangeMissCallToInboundCall';
  static const UPDATE_CONTACT_HISTORY_PATH =
      'api/services/app/Contact/UpdateContactHistory';
  static const CREATE_INTERACTCARD_CHANNEL_PATH =
      'api/services/app/OutboundCallCampaign/CreateInteractCardChannel';
}
