.class public Lcom/android/internal/app/AssistUtils;
.super Ljava/lang/Object;
.source "AssistUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssistUtils"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    .line 48
    const-string/jumbo v0, "voiceinteraction"

    .line 49
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 50
    return-void
.end method

.method public static allowDisablingAssistDisclosure(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isDisclosureEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_disclosure_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assistant"    # Landroid/content/ComponentName;

    .line 182
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 183
    return v0

    .line 187
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 190
    nop

    .line 192
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 189
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assistant"    # Landroid/content/ComponentName;

    .line 207
    invoke-static {p0}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 208
    return v1

    .line 211
    :cond_0
    invoke-static {p0}, Lcom/android/internal/app/AssistUtils;->isDisclosureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public activeServiceSupportsAssistGesture()Z
    .locals 4

    .line 77
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 78
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsAssist()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 77
    :cond_0
    return v0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call activeServiceSupportsAssistGesture"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return v0
.end method

.method public activeServiceSupportsLaunchFromKeyguard()Z
    .locals 4

    .line 87
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 88
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 87
    :cond_0
    return v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call activeServiceSupportsLaunchFromKeyguard"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    return v0
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    .line 97
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 100
    :cond_0
    return-object v0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call getActiveServiceComponentName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    return-object v0
.end method

.method public getAssistComponentForUser(I)Landroid/content/ComponentName;
    .locals 9
    .param p1, "userId"    # I

    .line 149
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 152
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "defaultSetting":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 158
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->activeServiceSupportsAssistGesture()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "search"

    .line 166
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 167
    .local v2, "searchManager":Landroid/app/SearchManager;
    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 168
    return-object v3

    .line 170
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v4

    .line 171
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 172
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/high16 v6, 0x10000

    invoke-virtual {v5, v4, v6, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 174
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_4

    .line 175
    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 178
    :cond_4
    return-object v3
.end method

.method public hideCurrentSession()V
    .locals 3

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideCurrentSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call hideCurrentSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public isSessionRunning()Z
    .locals 4

    .line 110
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 111
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->isSessionRunning()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 110
    :cond_0
    return v0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call isSessionRunning"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return v0
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 3

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->launchVoiceAssistFromKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call launchVoiceAssistFromKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onLockscreenShown()V
    .locals 3

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->onLockscreenShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call onLockscreenShown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/internal/app/IVoiceInteractionSessionListener;

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to register voice interaction listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 61
    :cond_0
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call showSessionForActiveService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
