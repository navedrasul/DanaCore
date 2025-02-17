# Define the list of submodules with their respective paths and URLs
$submodules = @(
    @{ Path = "../DanaCoreApps/CoreApps/DashboardAppAPI"; URL = "https://github.com/navedrasul/danacore-dashboard-api.git" },
    @{ Path = "../DanaCoreApps/CoreApps/DashboardAppUI"; URL = "https://github.com/navedrasul/danacore-dashboard-ui.git" },
    @{ Path = "../DanaCoreApps/CoreApps/RecordManagementAppAPI"; URL = "https://github.com/navedrasul/danacore-record-management-api.git" },
    @{ Path = "../DanaCoreApps/CoreApps/RecordManagementAppUI"; URL = "https://github.com/navedrasul/danacore-record-management-ui.git" },
    @{ Path = "../DanaCoreApps/CoreApps/WorkflowAutomationAppAPI"; URL = "https://github.com/navedrasul/danacore-workflow-automation-api.git" },
    @{ Path = "../DanaCoreApps/CoreApps/WorkflowAutomationAppUI"; URL = "https://github.com/navedrasul/danacore-workflow-automation-ui.git" },
    @{ Path = "../DanaCoreApps/OperationalApps/SalesManagementAppAPI"; URL = "https://github.com/navedrasul/danacore-sales-management-api.git" },
    @{ Path = "../DanaCoreApps/OperationalApps/SalesManagementAppUI"; URL = "https://github.com/navedrasul/danacore-sales-management-ui.git" },
    @{ Path = "../DanaCoreApps/OperationalApps/InventoryManagementAppAPI"; URL = "https://github.com/navedrasul/danacore-inventory-management-api.git" },
    @{ Path = "../DanaCoreApps/OperationalApps/InventoryManagementAppUI"; URL = "https://github.com/navedrasul/danacore-inventory-management-ui.git" },
    @{ Path = "../DanaCoreApps/OperationalApps/FinanceAccountingAppAPI"; URL = "https://github.com/navedrasul/danacore-finance-accounting-api.git" },
    @{ Path = "../DanaCoreApps/OperationalApps/FinanceAccountingAppUI"; URL = "https://github.com/navedrasul/danacore-finance-accounting-ui.git" },
    @{ Path = "../DanaCoreApps/AdministrativeApps/ConfigurationManagementAppAPI"; URL = "https://github.com/navedrasul/danacore-configuration-management-api.git" },
    @{ Path = "../DanaCoreApps/AdministrativeApps/ConfigurationManagementAppUI"; URL = "https://github.com/navedrasul/danacore-configuration-management-ui.git" },
    @{ Path = "../DanaCoreApps/AdministrativeApps/MonitoringAlertsAppAPI"; URL = "https://github.com/navedrasul/danacore-monitoring-alerts-api.git" },
    @{ Path = "../DanaCoreApps/AdministrativeApps/MonitoringAlertsAppUI"; URL = "https://github.com/navedrasul/danacore-monitoring-alerts-ui.git" },
    @{ Path = "../DanaCoreApps/AdministrativeApps/UserAccessManagementAppAPI"; URL = "https://github.com/navedrasul/danacore-user-access-management-api.git" },
    @{ Path = "../DanaCoreApps/AdministrativeApps/UserAccessManagementAppUI"; URL = "https://github.com/navedrasul/danacore-user-access-management-ui.git" },
    @{ Path = "../DanaCoreApps/AnalyticalApps/ReportingAppAPI"; URL = "https://github.com/navedrasul/danacore-reporting-api.git" },
    @{ Path = "../DanaCoreApps/AnalyticalApps/ReportingAppUI"; URL = "https://github.com/navedrasul/danacore-reporting-ui.git" },
    @{ Path = "../DanaCoreApps/AnalyticalApps/PredictiveAnalyticsAppAPI"; URL = "https://github.com/navedrasul/danacore-predictive-analytics-api.git" },
    @{ Path = "../DanaCoreApps/AnalyticalApps/PredictiveAnalyticsAppUI"; URL = "https://github.com/navedrasul/danacore-predictive-analytics-ui.git" },
    @{ Path = "../DanaCoreApps/AnalyticalApps/BusinessIntelligenceAppAPI"; URL = "https://github.com/navedrasul/danacore-business-intelligence-api.git" },
    @{ Path = "../DanaCoreApps/AnalyticalApps/BusinessIntelligenceAppUI"; URL = "https://github.com/navedrasul/danacore-business-intelligence-ui.git" },
    @{ Path = "../DanaCoreApps/IntegrationApps/PaymentGatewayIntegrationAppAPI"; URL = "https://github.com/navedrasul/danacore-payment-gateway-api.git" },
    @{ Path = "../DanaCoreApps/IntegrationApps/PaymentGatewayIntegrationAppUI"; URL = "https://github.com/navedrasul/danacore-payment-gateway-ui.git" },
    @{ Path = "../DanaCoreApps/IntegrationApps/CRMIntegrationAppAPI"; URL = "https://github.com/navedrasul/danacore-crm-integration-api.git" },
    @{ Path = "../DanaCoreApps/IntegrationApps/CRMIntegrationAppUI"; URL = "https://github.com/navedrasul/danacore-crm-integration-ui.git" },
    @{ Path = "../DanaCoreApps/IntegrationApps/APIManagementAppAPI"; URL = "https://github.com/navedrasul/danacore-api-management-api.git" },
    @{ Path = "../DanaCoreApps/IntegrationApps/APIManagementAppUI"; URL = "https://github.com/navedrasul/danacore-api-management-ui.git" },
    @{ Path = "../DanaCoreApps/CommunicationApps/EmailSMSAppAPI"; URL = "https://github.com/navedrasul/danacore-email-sms-api.git" },
    @{ Path = "../DanaCoreApps/CommunicationApps/EmailSMSAppUI"; URL = "https://github.com/navedrasul/danacore-email-sms-ui.git" },
    @{ Path = "../DanaCoreApps/CommunicationApps/TaskNotificationAppAPI"; URL = "https://github.com/navedrasul/danacore-task-notification-api.git" },
    @{ Path = "../DanaCoreApps/CommunicationApps/TaskNotificationAppUI"; URL = "https://github.com/navedrasul/danacore-task-notification-ui.git" },
    @{ Path = "../DanaCoreApps/CommunicationApps/CollaborationAppAPI"; URL = "https://github.com/navedrasul/danacore-collaboration-api.git" },
    @{ Path = "../DanaCoreApps/CommunicationApps/CollaborationAppUI"; URL = "https://github.com/navedrasul/danacore-collaboration-ui.git" },
    @{ Path = "../DanaCoreApps/ServiceApps/JobSchedulerApp"; URL = "https://github.com/navedrasul/danacore-job-scheduler.git" },
    @{ Path = "../DanaCoreApps/ServiceApps/EventProcessingApp"; URL = "https://github.com/navedrasul/danacore-event-processing.git" },
    @{ Path = "../DanaCoreApps/ServiceApps/AuditTrailApp"; URL = "https://github.com/navedrasul/danacore-audit-trail.git" }
)

# Add each submodule
foreach ($submodule in $submodules) {
    if (-not (Test-Path $submodule.Path)) {
        try {
            git submodule add $submodule.URL $submodule.Path
            Write-Output "Added submodule $($submodule.URL) at $($submodule.Path)"
        } catch {
            Write-Error "Failed to add submodule $($submodule.URL) at $($submodule.Path): $_"
        }
    } else {
        Write-Output "Submodule path $($submodule.Path) already exists. Skipping..."
    }
}