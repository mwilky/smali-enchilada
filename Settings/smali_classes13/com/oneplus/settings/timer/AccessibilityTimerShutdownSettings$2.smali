.class Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;
.super Ljava/lang/Object;
.source "AccessibilityTimerShutdownSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$102(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$100(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x11000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    iget-object v2, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-virtual {v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v3}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$100(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$202(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    iget-object v2, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    const-string v3, "alarm"

    invoke-static {v2, v3}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$600(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    invoke-static {v0, v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$302(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$300(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v4}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$200(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$300(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$200(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x0

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$500(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u7684\u95f9\u949f\u65f6\u95f4\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
