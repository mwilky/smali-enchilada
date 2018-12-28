.class Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method private constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    return-void
.end method


# virtual methods
.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 6

    if-nez p1, :cond_0

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] config is null!"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "switch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v3, "switch"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1402(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1400(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "bugreport"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v3, "bugreport"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1702(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mEnabledBugreport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1700(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "bugreport_beta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/OnePlusPowerController;->BETA_OR_ALPHA_ROM:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v3, "bugreport_beta"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1702(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mEnabledBugreport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1700(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v2, "mdm"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v3, "mdm"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1802(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mEnabledMDM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1800(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v2, "thermal_path"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v3, "thermal_path"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1902(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mThermalZonePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1900(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v2, "thermal_precision"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v3, "thermal_precision"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2002(Lcom/android/server/OverHeatingDiagnosis;I)I

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mThermalZonePrecision: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2000(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v2, "monitor_forced"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v3, "monitor_forced"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2102(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mMonitorForced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2100(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string/jumbo v2, "monitor_num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v3, "monitor_num"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2202(Lcom/android/server/OverHeatingDiagnosis;I)I

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mMonitorNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2200(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string/jumbo v2, "trigger_period"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v3, "trigger_period"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2302(Lcom/android/server/OverHeatingDiagnosis;J)J

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mTriggerPeriod: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2300(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string/jumbo v2, "monitor_period"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v3, "monitor_period"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2402(Lcom/android/server/OverHeatingDiagnosis;J)J

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mMonitorPeriod: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2400(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string/jumbo v2, "monitor_frequency"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v3, "monitor_frequency"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2502(Lcom/android/server/OverHeatingDiagnosis;J)J

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mMonitorFrequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2500(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string/jumbo v2, "monitor_temp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v3, "monitor_temp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2602(Lcom/android/server/OverHeatingDiagnosis;I)I

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mMonitorTemp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2600(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v2, "critical_cpu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v3, "critical_cpu"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2702(Lcom/android/server/OverHeatingDiagnosis;I)I

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mCriticalCpu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2700(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-string v2, "critical_total_cpu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v3, "critical_total_cpu"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2802(Lcom/android/server/OverHeatingDiagnosis;I)I

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mCriticalTotalCpu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2800(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v2, "critical_temp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v3, "critical_temp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2902(Lcom/android/server/OverHeatingDiagnosis;I)I

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mCriticalTemp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$2900(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string v2, "critical_charging_temp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v3, "critical_charging_temp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3002(Lcom/android/server/OverHeatingDiagnosis;I)I

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mCriticalChargingTemp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$3000(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string v2, "critical_foreground"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v3, "critical_foreground"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/OverHeatingDiagnosis;->access$3102(Lcom/android/server/OverHeatingDiagnosis;J)J

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mCriticalForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$3100(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string v2, "critical_charging"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v3, "critical_charging"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/OverHeatingDiagnosis;->access$3202(Lcom/android/server/OverHeatingDiagnosis;J)J

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mCriticalCharging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$3200(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string/jumbo v2, "log_on"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v2, "log_on"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/OPLogger$Slog;->enableDebug(Z)V

    goto :goto_0

    :cond_13
    invoke-static {v0}, Lcom/android/server/OPLogger$Slog;->enableDebug(Z)V

    :goto_0
    const-string v0, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] log_on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "log_on"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method
