.class final Lcom/android/settings/notification/SoundSettings$H;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final STOP_SAMPLE:I = 0x3

.field private static final UPDATE_ALARM_RINGTONE:I = 0x6

.field private static final UPDATE_EFFECTS_SUPPRESSOR:I = 0x4

.field private static final UPDATE_NOTIFICATION_RINGTONE:I = 0x2

.field private static final UPDATE_PHONE_RINGTONE:I = 0x1

.field private static final UPDATE_RINGER_MODE:I = 0x5

.field private static final UPDATE_SMS_RINGTONE:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$H;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundSettings$H;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$H;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$1000(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$H;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$900(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$H;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$1900(Lcom/android/settings/notification/SoundSettings;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$H;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$1800(Lcom/android/settings/notification/SoundSettings;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$H;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$H;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$800(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$H;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$400(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
