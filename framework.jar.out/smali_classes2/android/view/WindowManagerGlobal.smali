.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_ALWAYS_CONSUME_NAV_BAR:I = 0x4

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_INVALID_DISPLAY:I = -0x9

.field public static final ADD_INVALID_TYPE:I = -0xa

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_CONSUME_ALWAYS_NAV_BAR:I = 0x40

.field public static final RELAYOUT_RES_DRAG_RESIZING_DOCKED:I = 0x8

.field public static final RELAYOUT_RES_DRAG_RESIZING_FREEFORM:I = 0x10

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field public static final RELAYOUT_RES_SURFACE_RESIZED:I = 0x20

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static sWindowManagerService:Landroid/view/IWindowManager;

.field private static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private final mDyingViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    return-void
.end method

.method static synthetic access$000(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    return-object v0
.end method

.method private doTrimForeground()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const/16 v1, 0x50

    invoke-static {v1}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .locals 4

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p2, :cond_1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not attached to window manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return v0
.end method

.method public static getInstance()Landroid/view/WindowManagerGlobal;
    .locals 2

    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/WindowManagerGlobal;

    invoke-direct {v1}, Landroid/view/WindowManagerGlobal;-><init>()V

    sput-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    :cond_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getWindowManagerService()Landroid/view/IWindowManager;
    .locals 3

    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    move-result v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1
    :goto_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowSession()Landroid/view/IWindowSession;
    .locals 6

    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    new-instance v3, Landroid/view/WindowManagerGlobal$1;

    invoke-direct {v3}, Landroid/view/WindowManagerGlobal$1;-><init>()V

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v3

    sput-object v3, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    :goto_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static initialize()V
    .locals 0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    return-void
.end method

.method public static peekWindowSession()Landroid/view/IWindowSession;
    .locals 2

    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeViewLocked(IZ)V
    .locals 4

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->die(Z)Z

    move-result v2

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static shouldDestroyEglContext(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x50

    if-lt p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x3c

    if-lt p0, v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static trimForeground()V
    .locals 1

    sget-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
    .locals 8

    if-eqz p1, :cond_a

    if-eqz p3, :cond_9

    instance-of v0, p2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v3, :cond_2

    new-instance v3, Landroid/view/WindowManagerGlobal$2;

    invoke-direct {v3, p0}, Landroid/view/WindowManagerGlobal$2;-><init>(Landroid/view/WindowManagerGlobal;)V

    iput-object v3, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v3}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v4

    if-ltz v4, :cond_4

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->doDie()V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has already been added to the window manager."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_1
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_6

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-gt v5, v6, :cond_6

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    :goto_2
    if-ge v3, v5, :cond_6

    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v1, v6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    new-instance v3, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, p3}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, p1, v0, v1}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v5

    if-ltz v4, :cond_7

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    :cond_7
    throw v5

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeCanvasOpacity(Landroid/os/IBinder;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->changeCanvasOpacity(Z)V

    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    if-eqz p2, :cond_0

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_3

    :cond_1
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    if-eqz p3, :cond_2

    new-instance v5, Landroid/view/WindowLeaked;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has leaked window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " that was originally added here"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    const-string v6, "WindowManager"

    const-string v7, ""

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-direct {p0, v3, v2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doRemoveView(Landroid/view/ViewRootImpl;)V
    .locals 4

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v0

    :try_start_0
    iget-object v5, v1, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v6, "Profile data in ms:"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v7, v0, :cond_1

    iget-object v10, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    invoke-static {v10}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\n\t%s (visibility=%d)"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v11, v8, v6

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v9

    invoke-virtual {v4, v12, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    nop

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v8

    iget-object v8, v8, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v8, v4, v2, v12}, Landroid/view/ThreadedRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object/from16 v12, p2

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v12, p2

    const-string v7, "\nView hierarchy:\n"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    new-array v11, v8, [I

    move v13, v10

    move v10, v7

    move v7, v6

    :goto_2
    if-ge v7, v0, :cond_2

    iget-object v15, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/ViewRootImpl;

    invoke-virtual {v15, v11}, Landroid/view/ViewRootImpl;->dumpGfxInfo([I)V

    invoke-static {v15}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v16

    const-string v8, "  %s\n  %d views, %.2f kB of display lists"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v16, v14, v6

    aget v9, v11, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v19, 0x1

    aput-object v9, v14, v19

    aget v9, v11, v19

    int-to-float v9, v9

    const/high16 v18, 0x44800000    # 1024.0f

    div-float v9, v9, v18

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/16 v17, 0x2

    aput-object v9, v14, v17

    invoke-virtual {v4, v8, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v8, "\n\n"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    aget v8, v11, v6

    add-int/2addr v10, v8

    const/4 v8, 0x1

    aget v9, v11, v8

    add-int/2addr v13, v9

    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v17

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const-string v7, "\nTotal ViewRootImpl: %d\n"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-virtual {v4, v7, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v7, "Total Views:        %d\n"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-virtual {v4, v7, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v7, "Total DisplayList:  %.2f kB\n\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    int-to-float v9, v13

    const/high16 v14, 0x44800000    # 1024.0f

    div-float/2addr v9, v14

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v4, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    nop

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v12, p2

    :goto_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v12, p2

    :goto_4
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    throw v0
.end method

.method public getRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    iget-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eq v6, p1, :cond_3

    const/4 v6, 0x0

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3e8

    if-lt v7, v8, :cond_2

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7cf

    if-gt v7, v8, :cond_2

    move v7, v3

    :goto_1
    if-ge v7, v2, :cond_2

    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    if-ne v10, v11, :cond_1

    iget-object v10, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v10, p1, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getViewRootNames()[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindowView(Landroid/os/IBinder;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeView(Landroid/view/View;Z)V
    .locals 6

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    if-ne v2, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object p1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3, p1}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_2

    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3, p2}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0, v4, p2}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public trimMemory(I)V
    .locals 3

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/view/WindowManagerGlobal;->shouldDestroyEglContext(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/16 p1, 0x50

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    sget-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    :cond_2
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    if-eqz p1, :cond_1

    instance-of v0, p2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v2

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
