.class public Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPAssistantAPPSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;
    }
.end annotation


# static fields
.field private static final ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

.field private static final ASSIST_SERVICE_PROBE:Landroid/content/Intent;

.field private static final KEY_QUICK_TURN_ON_ASSISTANT_APP:Ljava/lang/String; = "quick_turn_on_assistant_app"


# instance fields
.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAvailableAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;",
            ">;"
        }
    .end annotation
.end field

.field protected mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "quick_turn_on_assistant_app"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Lcom/android/settings/widget/MasterSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAssistActivities()V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    new-instance v5, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAssistServices()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, v0, v5}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    new-instance v6, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v4}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCandidates()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->addAssistServices()V

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->addAssistActivities()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;

    iget-object v4, v3, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget-object v9, v3, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;->component:Landroid/content/ComponentName;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getDefaultKey()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private isEnabledApp(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, p1, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private noAssistantAppDialog()V
    .locals 4

    new-instance v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$1;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    new-instance v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$2;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120bd2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private toSelectAssistantAppDialog()V
    .locals 4

    new-instance v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    new-instance v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$4;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120d06

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "quick_turn_on_assistant_app"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "quick_turn_on_assistant_app"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const-string v0, "quick_turn_on_assistant_app"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.intent.DefaultAssistPicker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "assistntapp"

    const-string v2, "onClick"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quick_turn_on_voice_assistant"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->isEnabledApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_turn_on_voice_assistant"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quick_turn_on_voice_assistant"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_turn_on_voice_assistant"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v1, v2}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/MasterSwitchController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v1}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    :cond_7
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->noAssistantAppDialog()V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_turn_on_voice_assistant"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "quick_turn_on_voice_assistant"

    if-eqz p1, :cond_1

    const-string v2, "on"

    goto :goto_0

    :cond_1
    const-string v2, "off"

    :goto_0
    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->toSelectAssistantAppDialog()V

    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1
.end method
