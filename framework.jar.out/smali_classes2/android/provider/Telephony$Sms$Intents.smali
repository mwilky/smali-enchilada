.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final ACTION_DEFAULT_SMS_PACKAGE_CHANGED:Ljava/lang/String; = "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

.field public static final ACTION_EXTERNAL_PROVIDER_CHANGE:Ljava/lang/String; = "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final EXTRA_IS_DEFAULT_SMS_APP:Ljava/lang/String; = "android.provider.extra.IS_DEFAULT_SMS_APP"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final MMS_DOWNLOADED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOADED"

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CARRIER_PROVISION_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CARRIER_PROVISION"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "pdus"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v1, :cond_0

    const-string v2, "Telephony"

    const-string/jumbo v3, "pdus does not exist in the intent"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v0, "format"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getMessagesFromIntent sub_id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v1

    new-array v4, v3, [Landroid/telephony/SmsMessage;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    check-cast v6, [B

    invoke-static {v6, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v4, v5

    aget-object v7, v4, v5

    if-eqz v7, :cond_1

    aget-object v7, v4, v5

    invoke-virtual {v7, v2}, Landroid/telephony/SmsMessage;->setSubId(I)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v4

    :catch_0
    move-exception v1

    const-string v2, "Telephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessagesFromIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
