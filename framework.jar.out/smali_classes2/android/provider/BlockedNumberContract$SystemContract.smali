.class public Landroid/provider/BlockedNumberContract$SystemContract;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BlockedNumberContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
    }
.end annotation


# static fields
.field public static final ACTION_BLOCK_SUPPRESSION_STATE_CHANGED:Ljava/lang/String; = "android.provider.action.BLOCK_SUPPRESSION_STATE_CHANGED"

.field public static final ENHANCED_SETTING_KEY_BLOCK_PAYPHONE:Ljava/lang/String; = "block_payphone_calls_setting"

.field public static final ENHANCED_SETTING_KEY_BLOCK_PRIVATE:Ljava/lang/String; = "block_private_number_calls_setting"

.field public static final ENHANCED_SETTING_KEY_BLOCK_UNKNOWN:Ljava/lang/String; = "block_unknown_calls_setting"

.field public static final ENHANCED_SETTING_KEY_BLOCK_UNREGISTERED:Ljava/lang/String; = "block_numbers_not_in_contacts_setting"

.field public static final ENHANCED_SETTING_KEY_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "show_emergency_call_notification"

.field public static final METHOD_END_BLOCK_SUPPRESSION:Ljava/lang/String; = "end_block_suppression"

.field public static final METHOD_GET_BLOCK_SUPPRESSION_STATUS:Ljava/lang/String; = "get_block_suppression_status"

.field public static final METHOD_GET_ENHANCED_BLOCK_SETTING:Ljava/lang/String; = "get_enhanced_block_setting"

.field public static final METHOD_NOTIFY_EMERGENCY_CONTACT:Ljava/lang/String; = "notify_emergency_contact"

.field public static final METHOD_SET_ENHANCED_BLOCK_SETTING:Ljava/lang/String; = "set_enhanced_block_setting"

.field public static final METHOD_SHOULD_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "should_show_emergency_call_notification"

.field public static final METHOD_SHOULD_SYSTEM_BLOCK_NUMBER:Ljava/lang/String; = "should_system_block_number"

.field public static final RES_BLOCKING_SUPPRESSED_UNTIL_TIMESTAMP:Ljava/lang/String; = "blocking_suppressed_until_timestamp"

.field public static final RES_IS_BLOCKING_SUPPRESSED:Ljava/lang/String; = "blocking_suppressed"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endBlockSuppression(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "end_block_suppression"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static getBlockSuppressionStatus(Landroid/content/Context;)Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "get_block_suppression_status"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;

    const-string v2, "blocking_suppressed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "blocking_suppressed_until_timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;-><init>(ZJ)V

    return-object v1
.end method

.method public static getEnhancedBlockSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_enhanced_setting_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v5, "get_enhanced_block_setting"

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "enhanced_setting_enabled"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    :catch_0
    move-exception v3

    const-string v4, "getEnhancedBlockSetting: provider not ready."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static notifyEmergencyContact(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "notify_emergency_contact"

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "notifyEmergencyContact: provider not ready."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setEnhancedBlockSetting(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_enhanced_setting_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_enhanced_setting_value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "set_enhanced_block_setting"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static shouldShowEmergencyCallNotification(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v4, "should_show_emergency_call_notification"

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "show_emergency_call_notification"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "shouldShowEmergencyCallNotification: provider not ready."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static shouldSystemBlockNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "should_system_block_number"

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "blocked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    const-string/jumbo v3, "shouldSystemBlockNumber: provider not ready."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
