.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;,
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$SessionRequest;,
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/TextServicesManagerService$TextServicesData;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

.field private final mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/TextServicesManagerService$TextServicesData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/android/internal/textservice/LazyIntToIntMap;

    new-instance v1, Lcom/android/server/-$$Lambda$TextServicesManagerService$Gx5nx59gL-Y47MWUiJn5TqC2DLs;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$TextServicesManagerService$Gx5nx59gL-Y47MWUiJn5TqC2DLs;-><init>(Lcom/android/server/TextServicesManagerService;)V

    invoke-direct {v0, v1}, Lcom/android/internal/textservice/LazyIntToIntMap;-><init>(Ljava/util/function/IntUnaryOperator;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    new-instance v0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/TextServicesManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 17

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1500(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "no available spell checker services found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_2
    if-eqz v0, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    nop

    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_8

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Locale;

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v2, :cond_7

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v12}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_6

    invoke-virtual {v12, v14}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v15

    nop

    invoke-virtual {v15}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    return-object v12

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    if-le v2, v4, :cond_9

    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "more than one spell checker service found, picking first"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    return-object v3
.end method

.method private getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;
    .locals 6

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    if-eq v0, p1, :cond_2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    return-object v2

    :cond_2
    return-object v1
.end method

.method private initializeInternalStateLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->get(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$TextServicesData;

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;-><init>(ILandroid/content/Context;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$900(Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/TextServicesManagerService;I)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .locals 5

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    nop

    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1700(Lcom/android/server/TextServicesManagerService$TextServicesData;)I

    move-result v3

    const v4, 0x800001

    invoke-direct {p0, v2, v1, v4, v3}, Lcom/android/server/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get a spell checker service."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-direct {v3, p0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)V

    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method private unbindServiceLocked(Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    array-length v0, p3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-object v0, p3, v1

    const-string v3, "-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, p3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    aget-object v0, p3, v1

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    aget-object v0, p3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v2, "Non-existent user."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$TextServicesData;

    if-nez v2, :cond_4

    const-string v3, "User needs to unlock first."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "Current Text Services Manager state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_5
    :goto_0
    const-string v0, "Invalid arguments to text services."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    const-string v2, "Current Text Services Manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Users:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    nop

    :goto_2
    if-ge v1, v2, :cond_7

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TextServicesManagerService$TextServicesData;

    invoke-static {v3, p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    monitor-exit v0

    :goto_3
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    nop

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v7, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 11

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v3

    :cond_0
    nop

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getSelectedSpellCheckerSubtype(I)I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v2, v7

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez v5, :cond_2

    if-nez p2, :cond_2

    return-object v3

    :cond_2
    const/4 v1, 0x0

    if-nez v5, :cond_4

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_3

    nop

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v1, v8

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    const/4 v3, 0x0

    nop

    :goto_0
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v7

    if-ge v4, v7, :cond_9

    invoke-virtual {v6, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    if-nez v5, :cond_7

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    return-object v7

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v10, :cond_6

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v3, v7

    :cond_6
    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v8

    if-ne v8, v5, :cond_8

    return-object v7

    :cond_8
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    return-object v3

    :cond_a
    :goto_2
    return-object v3

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    :cond_0
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1500(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v1

    return-object v4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    if-nez p4, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    iget-object v10, v1, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-direct {v1, v9}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v0

    move-object v11, v0

    if-nez v11, :cond_1

    monitor-exit v10

    return-void

    :cond_1
    invoke-static {v11}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v12, v0

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v10

    return-void

    :cond_2
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    move-object v13, v0

    nop

    invoke-static {v11}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v8, v0

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v3, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {v1, v13, v11}, Lcom/android/server/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v3, :cond_3

    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v7, v0

    throw v7

    :cond_3
    move-object v0, v3

    new-instance v7, Lcom/android/server/TextServicesManagerService$SessionRequest;

    move-object v3, v7

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v1, v7

    move-object/from16 v7, p4

    move-object v14, v8

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/TextServicesManagerService$SessionRequest;-><init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionOrQueueLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    monitor-exit v10

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    :goto_0
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v1, "getSpellCheckerService: Invalid input."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isSpellCheckerEnabled()Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v1

    return v3

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result v3

    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onStopUser(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->delete(I)V

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->unbindServiceLocked(Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onUnlockUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->initializeInternalStateLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
