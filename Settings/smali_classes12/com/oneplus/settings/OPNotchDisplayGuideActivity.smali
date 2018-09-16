.class public Lcom/oneplus/settings/OPNotchDisplayGuideActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPNotchDisplayGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HIDE_NOTCH:I = 0x1

.field private static final ONEPLUS_NOTCH_MODE:Ljava/lang/String; = "op_camera_notch_ignore"

.field private static final SHOW_NOTCH:I


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mAms:Landroid/app/IActivityManager;

.field private mHideNotch:Landroid/widget/ImageView;

.field private mHideNotchBtn:Landroid/widget/RadioButton;

.field private mHideNotchMode:Landroid/view/View;

.field private mShowNotch:Landroid/widget/ImageView;

.field private mShowNotchBtn:Landroid/widget/RadioButton;

.field private mShowNotchMode:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private killSomeProcess()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    const-string v1, "com.android.dialer"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private removeRunningTask()V
    .locals 9

    .line 106
    const/4 v0, 0x0

    move-object v1, v0

    .line 108
    .local v1, "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const v3, 0x7fffffff

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v1, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    const/4 v2, 0x0

    .line 118
    .local v2, "skipSettings":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 119
    .local v4, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v2, :cond_2

    .line 120
    if-eqz v4, :cond_1

    .line 121
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_2

    :cond_1
    move-object v5, v0

    .line 122
    .local v5, "topActivity":Landroid/content/ComponentName;
    :goto_2
    if-eqz v5, :cond_2

    .line 123
    const-string v6, "com.android.settings"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    const/4 v2, 0x1

    .line 125
    goto :goto_1

    .line 130
    .end local v5    # "topActivity":Landroid/content/ComponentName;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    goto :goto_3

    .line 131
    :catch_1
    move-exception v5

    .line 132
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "OPNotchDisplayGuideActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v4    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_3
    goto :goto_1

    .line 135
    :cond_3
    return-void
.end method

.method private setCurrentMode()V
    .locals 5

    .line 88
    invoke-virtual {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_camera_notch_ignore"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "notchMode":I
    iget-object v1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 90
    iget-object v1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    if-ne v0, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 91
    return-void
.end method

.method private setNotchMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 94
    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->removeRunningTask()V

    .line 95
    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->killSomeProcess()V

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_camera_notch_ignore"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 77
    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setNotchMode(I)V

    .line 78
    const-string v0, "notch_display"

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 82
    invoke-direct {p0, v2}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setNotchMode(I)V

    .line 83
    const-string v0, "notch_display"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0d016a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setContentView(I)V

    .line 50
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAms:Landroid/app/IActivityManager;

    .line 52
    const v0, 0x7f0a03aa

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0a0391

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0a03a8

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    .line 57
    const v0, 0x7f0a038f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    .line 59
    const v0, 0x7f0a03a9

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0a0390

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    .line 61
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    const v1, 0x7f08033a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    const v1, 0x7f080324

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    const v1, 0x7f08033b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    const v1, 0x7f080325

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setCurrentMode()V

    .line 69
    return-void
.end method
