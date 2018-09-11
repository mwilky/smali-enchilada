.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;
.implements Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;,
        Lcom/android/settings/DateTimeSettings$SummaryProvider;
    }
.end annotation


# static fields
.field protected static final EXTRA_IS_FROM_SUW:Ljava/lang/String; = "firstRun"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "DateTimeSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 168
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0}, Lcom/android/settings/DateTimeSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/DateTimeSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 178
    new-instance v0, Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;-><init>(Lcom/android/settings/DateTimeSettings$1;)V

    sput-object v0, Lcom/android/settings/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 79
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 80
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "firstRun"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 82
    .local v3, "isFromSUW":Z
    new-instance v4, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-direct {v4, v1, p0, v3}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V

    .line 85
    .local v4, "autoTimeZonePreferenceController":Lcom/android/settings/datetime/AutoTimeZonePreferenceController;
    new-instance v5, Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-direct {v5, v1, p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    .line 88
    .local v5, "autoTimePreferenceController":Lcom/android/settings/datetime/AutoTimePreferenceController;
    new-instance v6, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;

    invoke-direct {v6, v1, p0}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    .line 91
    .local v6, "autoTimeFormatPreferenceController":Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v7, Lcom/android/settings/datetime/TimeFormatPreferenceController;

    invoke-direct {v7, v1, p0, v3}, Lcom/android/settings/datetime/TimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v7, Lcom/android/settings/datetime/TimeZonePreferenceController;

    invoke-direct {v7, v1, v4}, Lcom/android/settings/datetime/TimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/AutoTimeZonePreferenceController;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v7, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-direct {v7, v1, p0, v5}, Lcom/android/settings/datetime/TimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v7, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-direct {v7, v1, p0, v5}, Lcom/android/settings/datetime/DatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 131
    :pswitch_0
    const/16 v0, 0x260

    return v0

    .line 129
    :pswitch_1
    const/16 v0, 0x25f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "DateTimeSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 56
    const/16 v0, 0x26

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 66
    const v0, 0x7f16003b

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datetime/TimeChangeListenerMixin;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/datetime/TimeChangeListenerMixin;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 73
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 118
    :pswitch_0
    const-class v0, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/TimePreferenceController;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/TimePreferenceController;->buildTimePicker(Landroid/app/Activity;)Lcom/oneplus/lib/app/TimePickerDialog;

    move-result-object v0

    .line 118
    return-object v0

    .line 115
    :pswitch_1
    const-class v0, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/DatePreferenceController;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/DatePreferenceController;->buildDatePicker(Landroid/app/Activity;)Lcom/oneplus/lib/app/DatePickerDialog;

    move-result-object v0

    .line 115
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showDatePicker()V
    .locals 1

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 146
    return-void
.end method

.method public showTimePicker()V
    .locals 1

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 141
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->updatePreferenceStates()V

    .line 109
    return-void
.end method
