.class public Lcom/android/settings/notification/ZenOnboardingActivity;
.super Landroid/app/Activity;
.source "ZenOnboardingActivity.java"


# static fields
.field static final ALWAYS_SHOW_THRESHOLD:J = 0x48190800L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PREF_KEY_SUGGESTION_FIRST_DISPLAY_TIME:Ljava/lang/String; = "pref_zen_suggestion_first_display_time_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ZenOnboardingActivity"


# instance fields
.field mKeepCurrentSetting:Landroid/view/View;

.field mKeepCurrentSettingButton:Landroid/widget/RadioButton;

.field private mMetrics:Lcom/android/internal/logging/MetricsLogger;

.field mNewSetting:Landroid/view/View;

.field mNewSettingButton:Landroid/widget/RadioButton;

.field private mNm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->wasZenUpdated(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->showSuggestion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->withinShowTimeThreshold(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static showSuggestion(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_zen_settings_suggestion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private static wasZenUpdated(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    nop

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "zen_settings_updated"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "zen_settings_updated"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    return v2
.end method

.method private static withinShowTimeThreshold(Landroid/content/Context;)Z
    .locals 12

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "pref_zen_suggestion_first_display_time_ms"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "pref_zen_suggestion_first_display_time_ms"

    invoke-interface {v6, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    const-string v4, "pref_zen_suggestion_first_display_time_ms"

    const-wide/16 v5, -0x1

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    :goto_0
    const-wide/32 v6, 0x48190800

    add-long/2addr v6, v4

    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const-string v9, "ZenOnboardingActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "still show zen suggestion based on time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method


# virtual methods
.method public launchSettings(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x563

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->setNotificationManager(Landroid/app/NotificationManager;)V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->setMetricsLogger(Lcom/android/internal/logging/MetricsLogger;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_settings_suggestion_viewed"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->setupUI()V

    return-void
.end method

.method public save(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/NotificationManager$Policy;

    const/16 v2, 0x10

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    or-int/2addr v2, v3

    const/4 v3, 0x2

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {}, Landroid/app/NotificationManager$Policy;->getAllSuppressedVisualEffects()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v3, 0x562

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x57e

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_settings_updated"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->finishAndRemoveTask()V

    return-void
.end method

.method protected setMetricsLogger(Lcom/android/internal/logging/MetricsLogger;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method protected setNotificationManager(Landroid/app/NotificationManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    return-void
.end method

.method protected setupUI()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const v0, 0x7f0d02e3

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->setContentView(I)V

    const v0, 0x7f0a05d9

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSetting:Landroid/view/View;

    const v0, 0x7f0a05d5

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSetting:Landroid/view/View;

    const v0, 0x7f0a05da

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    const v0, 0x7f0a05d6

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    new-instance v0, Lcom/android/settings/notification/ZenOnboardingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenOnboardingActivity$1;-><init>(Lcom/android/settings/notification/ZenOnboardingActivity;)V

    new-instance v1, Lcom/android/settings/notification/ZenOnboardingActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenOnboardingActivity$2;-><init>(Lcom/android/settings/notification/ZenOnboardingActivity;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSetting:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSetting:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v3, 0x564

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    return-void
.end method
