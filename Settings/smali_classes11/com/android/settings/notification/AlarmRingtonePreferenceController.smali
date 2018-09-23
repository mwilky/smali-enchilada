.class public Lcom/android/settings/notification/AlarmRingtonePreferenceController;
.super Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.source "AlarmRingtonePreferenceController.java"


# static fields
.field private static final KEY_ALARM_RINGTONE:Ljava/lang/String; = "alarm_ringtone"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "alarm_ringtone"

    return-object v0
.end method

.method public getRingtoneType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
