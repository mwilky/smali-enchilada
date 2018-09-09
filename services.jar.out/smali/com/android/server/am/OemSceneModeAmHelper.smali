.class public final Lcom/android/server/am/OemSceneModeAmHelper;
.super Ljava/lang/Object;
.source "OemSceneModeAmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field private static final IS_SCENE_MODES_FEATURED:Z

.field private static final TAG:Ljava/lang/String; = "OemSceneModeAmHelper"

.field private static sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sOemExSvc:Lcom/oem/os/IOemExService;

.field private static sSceneChangingMonitorStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x19

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    return v0
.end method

.method public static disableSceneButtonLockFeature(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "toDisable"    # Z

    .line 346
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "temp_disable_scene_button_lcok_feature"

    .line 351
    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    .line 350
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 353
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "OemSceneModeAmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] updateSceneButtonLockFeature toDisable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method

.method public static endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 374
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v0, :cond_2

    .line 375
    const-string v0, "OemSceneModeAmHelper"

    const-string v1, "[scene] end switching user"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :try_start_0
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v0, :cond_0

    .line 378
    const-string v0, "OEMExService"

    .line 379
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 378
    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->isKeyguardDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->monitorSceneChanging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_1
    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemSceneModeAmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public static handleShowOrOccludedChanged(Lcom/android/server/am/KeyguardController;ZZLcom/android/server/am/ActivityStackSupervisor;)V
    .locals 6
    .param p0, "kc"    # Lcom/android/server/am/KeyguardController;
    .param p1, "keyguardShowing"    # Z
    .param p2, "occluded"    # Z
    .param p3, "acss"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 264
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v0, :cond_6

    .line 265
    const-string v0, "OemSceneModeAmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] handleShowOrOccludedChanged showing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", occluded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    .line 270
    .local v2, "toMonitorSceneChanging":Z
    :goto_1
    sget-boolean v3, Lcom/android/server/am/OemSceneModeAmHelper;->sSceneChangingMonitorStarted:Z

    if-eq v2, v3, :cond_5

    .line 272
    :try_start_0
    sget-object v3, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v3, :cond_2

    .line 273
    const-string v3, "OEMExService"

    .line 274
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 273
    invoke-static {v3}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    .line 277
    :cond_2
    sget-object v3, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    nop

    :cond_4
    :goto_2
    invoke-interface {v3, v0}, Lcom/oem/os/IOemExService;->monitorSceneChanging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_3

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OemSceneModeAmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    sput-boolean v2, Lcom/android/server/am/OemSceneModeAmHelper;->sSceneChangingMonitorStarted:Z

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardShowing(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 288
    invoke-virtual {p3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

    iget-object v0, v0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateSceneScreenEffectFlag(I)V

    .line 292
    .end local v2    # "toMonitorSceneChanging":Z
    :cond_6
    return-void
.end method

.method public static shouldIgnoreSceneEvaluation(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)Z
    .locals 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 296
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "permissionIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x110000

    .line 303
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 305
    .local v1, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 307
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    sget-object v4, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 311
    :cond_0
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    .line 313
    const-string v2, "OemSceneModeAmHelper"

    const-string v3, "[scene] scene evaluation ignore list: "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 316
    .local v3, "cn":Landroid/content/ComponentName;
    const-string v4, "OemSceneModeAmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[scene]    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v3    # "cn":Landroid/content/ComponentName;
    goto :goto_1

    .line 319
    :cond_1
    const-string v2, "OemSceneModeAmHelper"

    const-string v3, "[scene]     Empty"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "permissionIntent":Landroid/content/Intent;
    .end local v1    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 326
    return v0

    .line 330
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 331
    return v2

    .line 335
    :cond_4
    sget-object v1, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 336
    .restart local v3    # "cn":Landroid/content/ComponentName;
    if-eqz v3, :cond_5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 337
    return v2

    .line 339
    .end local v3    # "cn":Landroid/content/ComponentName;
    :cond_5
    goto :goto_2

    .line 341
    :cond_6
    return v0
.end method

.method public static startUserSwitching()V
    .locals 4

    .line 358
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v0, :cond_1

    .line 359
    const-string v0, "OemSceneModeAmHelper"

    const-string v1, "[scene] start switching user"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :try_start_0
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v0, :cond_0

    .line 362
    const-string v0, "OEMExService"

    .line 363
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    .line 366
    :cond_0
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->monitorSceneChanging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemSceneModeAmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method
