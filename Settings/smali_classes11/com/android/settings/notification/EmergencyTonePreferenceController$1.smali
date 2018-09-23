.class Lcom/android/settings/notification/EmergencyTonePreferenceController$1;
.super Lcom/android/settings/notification/SettingPref;
.source "EmergencyTonePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/EmergencyTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/EmergencyTonePreferenceController;


# direct methods
.method varargs constructor <init>(Lcom/android/settings/notification/EmergencyTonePreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 6

    iput-object p1, p0, Lcom/android/settings/notification/EmergencyTonePreferenceController$1;->this$0:Lcom/android/settings/notification/EmergencyTonePreferenceController;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const v0, 0x7f1205cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f1205c7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x7f1205c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method
