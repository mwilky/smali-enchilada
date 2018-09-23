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

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const-string v0, "quick_turn_on_assistant_app"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 55
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    .line 41
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    .line 41
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Lcom/android/settings/widget/MasterSwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    .line 41
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    .line 41
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    .line 41
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    .line 41
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAssistActivities()V
    .locals 9

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 206
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 209
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
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

    .line 212
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method private addAssistServices()V
    .locals 10

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 188
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 190
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 191
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, v0, v5}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 193
    .local v4, "voiceInteractionServiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v5

    if-nez v5, :cond_0

    .line 194
    goto :goto_0

    .line 197
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

    .line 201
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "voiceInteractionServiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    goto :goto_0

    .line 202
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

    .line 216
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->addAssistServices()V

    .line 218
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->addAssistActivities()V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/DefaultAppInfo;>;"
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

    .line 223
    .local v3, "info":Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;
    iget-object v4, v3, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v5, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v8, -0x2

    iget-object v9, v3, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;->component:Landroid/content/ComponentName;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v3    # "info":Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 231
    :cond_1
    return-object v1
.end method

.method private getDefaultKey()Ljava/lang/String;
    .locals 5

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 80
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 83
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private isEnabledApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packagename"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    move v2, v1

    .line 90
    .local v2, "isExist":Z
    :try_start_0
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 91
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 90
    invoke-virtual {v3, p1, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 95
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 94
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 96
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    .line 97
    const/4 v2, 0x1

    .line 99
    :cond_0
    return v2
.end method

.method private noAssistantAppDialog()V
    .locals 4

    .line 129
    new-instance v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$1;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    .line 139
    .local v0, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$2;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    .line 146
    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    const v3, 0x7f120bb5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 148
    const v3, 0x104000a

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 149
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 151
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 152
    return-void
.end method

.method private toSelectAssistantAppDialog()V
    .locals 4

    .line 155
    new-instance v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    .line 170
    .local v0, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$4;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    .line 177
    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    const v3, 0x7f120ccd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 179
    const v3, 0x104000a

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 180
    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 183
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 184
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 61
    const-string v0, "quick_turn_on_assistant_app"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    .line 62
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "quick_turn_on_assistant_app"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 253
    const-string v0, "quick_turn_on_assistant_app"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.intent.DefaultAssistPicker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "assistntapp"

    const-string v2, "onClick"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    const/4 v1, 0x1

    return v1

    .line 260
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 6

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/DefaultAppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 109
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

    .line 110
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 114
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

    .line 115
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 116
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_turn_on_voice_assistant"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 118
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

    .line 111
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 112
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_turn_on_voice_assistant"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v1, :cond_7

    .line 122
    new-instance v1, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v1, v2}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    .line 123
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/MasterSwitchController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 124
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v1}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    .line 126
    :cond_7
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 3
    .param p1, "isChecked"    # Z

    .line 236
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 237
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/DefaultAppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->noAssistantAppDialog()V

    goto :goto_1

    .line 239
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_turn_on_voice_assistant"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    const-string v1, "quick_turn_on_voice_assistant"

    if-eqz p1, :cond_1

    const-string v2, "on"

    goto :goto_0

    :cond_1
    const-string v2, "off"

    :goto_0
    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->toSelectAssistantAppDialog()V

    .line 248
    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1
.end method
