.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$CanvasProvider;,
        Landroid/view/ViewDebug$HardwareCanvasProvider;,
        Landroid/view/ViewDebug$SoftwareCanvasProvider;,
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$ExportedProperty;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final DEBUG_DRAG:Z = false

.field public static final DEBUG_POSITIONING:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMP_THEME:Ljava/lang/String; = "DUMP_THEME"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRACE_RECYCLER:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/view/ViewDebug$4;

    invoke-direct {v1, p0, v0}, Landroid/view/ViewDebug$4;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;)V

    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v3, v4

    :cond_1
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const-wide/16 v4, 0xfa0

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected cancellation exception"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/IllegalAccessException;

    if-nez v6, :cond_3

    instance-of v6, v5, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/InvocationTargetException;

    throw v6

    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected exception"

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_3
    move-object v6, v5

    check-cast v6, Ljava/lang/IllegalAccessException;

    throw v6
.end method

.method public static capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "View"

    const-string v2, "Failed to create capture bitmap!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-static {v1, v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v2

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v2
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    return-void
.end method

.method public static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    throw v0
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x2

    new-array v6, v5, [I

    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    aget v7, v6, v1

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    aget v7, v6, v2

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    invoke-static {p0, v2}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    mul-int/2addr v8, v5

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v5, v7

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v5, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    :cond_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    :cond_4
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    nop

    :goto_2
    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1, v0}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v1, p1, v0}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    :cond_6
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, "\\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const/4 v5, 0x0

    :try_start_0
    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-interface {v7}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "()="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v10, "\\n"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v8, "null"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v8, "; "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_3

    :catch_1
    move-exception v5

    :goto_2
    nop

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    sget-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Field;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, [Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    sget-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2

    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Method;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, [Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const-string v0, "DUMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    const-string v0, "DUMP_THEME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    const-string v0, "CAPTURE_LAYERS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_2
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "CAPTURE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v1, v0, v1

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v1, v0, v1

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "INVALIDATE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v1, v0, v1

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "REQUEST_LAYOUT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    aget-object v1, v0, v1

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "PROFILE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    aget-object v1, v0, v1

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, p3, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v3, 0x8000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v7, 0x0

    move-object v5, v2

    move-object v6, v0

    move v8, p1

    move v9, p2

    invoke-static/range {v4 .. v9}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    :cond_0
    const-string v2, "DONE."

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "View"

    const-string v3, "Problem dumping the view:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v1
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v3, 0x8000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/view/ViewDebug;->getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    const-string v2, "DONE."

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "View"

    const-string v3, "Problem dumping View Theme:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    throw v1
.end method

.method private static dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, p3, :cond_0

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ViewOverlay"

    move-object v1, v3

    :cond_1
    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    if-eqz p4, :cond_2

    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :goto_1
    nop

    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    invoke-static {v6, v7, v8, v9, v10}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v0, 0x0

    :goto_0
    move v12, v0

    if-ge v12, v11, :cond_4

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    instance-of v0, v13, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v1, v13

    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v3, v9, 0x1

    move-object v0, v6

    move-object v2, v8

    move/from16 v4, p4

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v9, 0x1

    invoke-static {v6, v13, v8, v0, v10}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    :goto_1
    iget-object v0, v13, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_3

    invoke-virtual {v13}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v14

    iget-object v5, v14, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    add-int/lit8 v3, v9, 0x2

    move-object v0, v6

    move-object v1, v5

    move-object v2, v8

    move/from16 v4, p4

    move-object v15, v5

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    :cond_3
    add-int/lit8 v0, v12, 0x1

    goto :goto_0

    :cond_4
    instance-of v0, v7, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_5

    move-object v0, v7

    check-cast v0, Landroid/view/ViewDebug$HierarchyHandler;

    add-int/lit8 v1, v9, 0x1

    invoke-interface {v0, v8, v1}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    :cond_5
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=4,null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    return-void
.end method

.method public static dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v0, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Landroid/view/ViewDebug$3;

    invoke-direct {v2, v0, p0, v1}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/ViewHierarchyEncoder;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v0}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    return-void
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11

    const/4 v0, 0x0

    :goto_0
    move v14, v0

    if-ge v14, v12, :cond_12

    aget-object v0, v11, v14

    move-object v15, v0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    sget-object v1, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewDebug$ExportedProperty;

    move-object v3, v1

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v19, v11

    goto/16 :goto_a

    :cond_0
    :try_start_2
    const-string v1, ""

    :goto_1
    move-object v2, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x5f

    if-eq v6, v1, :cond_8

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v1, :cond_1

    move-object/from16 v17, v0

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v19, v11

    move-object v11, v6

    goto/16 :goto_4

    :cond_1
    const-class v1, [I

    if-ne v6, v1, :cond_2

    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    move-object v13, v1

    const-string v16, ""
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v7

    move-object/from16 v17, v0

    move-object v0, v2

    move-object v2, v9

    move-object/from16 v18, v3

    move-object/from16 v19, v11

    move-object v11, v6

    move-object/from16 v6, v16

    :try_start_3
    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_2
    move-object/from16 v17, v0

    move-object v0, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v11

    move-object v11, v6

    const-class v1, [Ljava/lang/String;

    if-ne v11, v1, :cond_6

    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object/from16 v2, v18

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_5

    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v3

    const-string v6, ""

    add-int/lit8 v13, v3, 0x1

    aget-object v13, v1, v13

    if-nez v13, :cond_3

    const-string/jumbo v13, "null"

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v3, 0x1

    aget-object v13, v1, v13

    :goto_3
    invoke-static {v9, v4, v5, v6, v13}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_5
    goto/16 :goto_a

    :cond_6
    move-object/from16 v2, v18

    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v1, v9, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_7
    move-object/from16 v1, v17

    goto/16 :goto_9

    :cond_8
    move-object/from16 v17, v0

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v19, v11

    move-object v11, v6

    :goto_4
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v7, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    goto/16 :goto_9

    :cond_9
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_a

    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v1, v3, v4}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    :cond_a
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_d

    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    array-length v5, v3

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_c

    aget-object v13, v3, v6

    move-object/from16 v20, v1

    invoke-interface {v13}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v1

    if-ne v1, v4, :cond_b

    invoke-interface {v13}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v20

    goto :goto_5

    :cond_c
    move-object/from16 v20, v1

    move-object/from16 v1, v17

    :goto_6
    if-nez v1, :cond_e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v6

    goto :goto_7

    :cond_d
    move-object/from16 v20, v1

    move-object/from16 v1, v17

    :cond_e
    :goto_7
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->formatToHexString()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v4, :cond_f

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_8

    :cond_f
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v11, v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v1

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    :cond_10
    :goto_8
    nop

    :goto_9
    if-nez v1, :cond_11

    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v9, v3, v4, v5, v1}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v19, v11

    :goto_a
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v11, v19

    goto/16 :goto_0

    :cond_12
    move-object/from16 v19, v11

    return-void
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v11, v10

    const/4 v0, 0x0

    :goto_0
    move v13, v0

    if-ge v13, v11, :cond_e

    aget-object v0, v10, v13

    move-object v14, v0

    move-object/from16 v15, p1

    :try_start_0
    invoke-static {v14, v15}, Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    sget-object v1, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewDebug$ExportedProperty;

    move-object v3, v1

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    goto/16 :goto_a

    :cond_0
    :try_start_2
    const-string v1, ""

    :goto_1
    move-object v2, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_6

    if-ne v6, v1, :cond_7

    :try_start_3
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v7, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v7, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    nop

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object v10, v2

    move-object v2, v3

    move-object v11, v6

    goto/16 :goto_7

    :cond_1
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v1

    array-length v4, v1

    if-lez v4, :cond_2

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5f

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v1, v4, v5}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    :cond_2
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_5

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v12, 0x0

    move-object/from16 v17, v1

    array-length v1, v4

    const/16 v16, 0x0

    :goto_2
    move/from16 v18, v16

    move-object/from16 v19, v3

    move/from16 v3, v18

    if-ge v3, v1, :cond_4

    aget-object v16, v4, v3

    move-object/from16 v20, v16

    move/from16 v21, v1

    move-object/from16 v22, v4

    move-object/from16 v1, v20

    invoke-interface {v1}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-interface {v1}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v16, v3, 0x1

    move-object/from16 v3, v19

    move/from16 v1, v21

    move-object/from16 v4, v22

    goto :goto_2

    :cond_4
    move/from16 v21, v1

    move-object/from16 v22, v4

    :goto_3
    if-nez v12, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object/from16 v19, v3

    :cond_6
    :goto_4
    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object v10, v2

    move-object v11, v6

    move-object/from16 v2, v19

    goto/16 :goto_7

    :cond_7
    move-object/from16 v19, v3

    :try_start_4
    const-class v1, [I

    if-ne v6, v1, :cond_8

    move-object v4, v0

    check-cast v4, [I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v1, "()"

    move-object v12, v1

    const-string v16, "()"
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v1, v7

    move-object v3, v2

    move-object v2, v8

    move-object/from16 v24, v10

    move-object/from16 v23, v19

    move-object v10, v3

    move-object/from16 v3, v23

    move/from16 v25, v11

    move-object v11, v6

    move-object/from16 v6, v16

    :try_start_5
    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_8
    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v23, v19

    move-object v10, v2

    move-object v11, v6

    const-class v1, [Ljava/lang/String;

    if-ne v11, v1, :cond_c

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    move-object/from16 v2, v23

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    const/4 v3, 0x0

    :goto_5
    array-length v4, v1

    if-ge v3, v4, :cond_b

    aget-object v4, v1, v3

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v3

    const-string v6, "()"

    add-int/lit8 v12, v3, 0x1

    aget-object v12, v1, v12

    if-nez v12, :cond_9

    const-string/jumbo v12, "null"

    goto :goto_6

    :cond_9
    add-int/lit8 v12, v3, 0x1

    aget-object v12, v1, v12

    :goto_6
    invoke-static {v8, v4, v5, v6, v12}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    :cond_b
    goto :goto_b

    :cond_c
    move-object/from16 v2, v23

    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v8, v1}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    goto :goto_b

    :cond_d
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "()"

    invoke-static {v8, v1, v3, v4, v0}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    :goto_8
    goto :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    :goto_9
    goto :goto_a

    :catch_8
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    :goto_a
    nop

    :goto_b
    add-int/lit8 v0, v13, 0x1

    move-object/from16 v10, v24

    move/from16 v11, v25

    goto/16 :goto_0

    :cond_e
    move-object/from16 v15, p1

    move-object/from16 v24, v10

    move/from16 v25, v11

    return-void
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x1

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v6

    array-length v7, v6

    if-lez v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    array-length v8, v1

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_9

    const/4 v10, 0x0

    aget v11, v1, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_4

    array-length v13, v2

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_4

    aget-object v15, v2, v14

    invoke-interface {v15}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v4

    if-ne v4, v9, :cond_3

    invoke-interface {v15}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-eqz v7, :cond_6

    array-length v4, v6

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v4, :cond_6

    aget-object v14, v6, v13

    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v15

    if-ne v15, v11, :cond_5

    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    if-eqz v5, :cond_7

    if-nez v10, :cond_8

    invoke-static {v0, v11}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    goto :goto_8

    :cond_7
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :cond_8
    :goto_8
    move-object/from16 v4, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-static {v4, v13, v12, v14, v10}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v4, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v4

    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v5

    and-int/2addr v5, p2

    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    if-eqz v6, :cond_1

    if-nez v4, :cond_2

    :cond_1
    if-nez v6, :cond_3

    if-nez v4, :cond_3

    :cond_2
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {p0, p3, v7, v9, v8}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 6

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    nop

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 4

    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {v2, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    :goto_1
    iget-object v3, v2, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    iget-object v3, v3, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    instance-of v3, v2, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method public static flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->getFlagMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$FlagToString;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget-object v6, v0, v4

    invoke-interface {v6}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v7

    invoke-interface {v6}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int/2addr v8, p2

    invoke-interface {v6}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v9

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    invoke-interface {v6}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatIntToHexString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    sget-object v0, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    :cond_1
    sget-object v0, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_3

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    move-object v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    sget-object v0, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    :cond_1
    sget-object v0, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v1, v2

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_3

    const-class v6, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v6

    nop

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Method;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static getFlagMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$FlagToString;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/view/ViewDebug$FlagToString;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v0}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$IntToString;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/view/ViewDebug$IntToString;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v0}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;
    .locals 11

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const-string/jumbo v1, "null"

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getAllAttributes()[I

    move-result-object v3

    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v3, v6

    :try_start_0
    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    add-int/lit8 v8, v2, 0x1

    const/4 v9, 0x1

    invoke-virtual {p1, v7, v0, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_0
    move-object v10, v1

    :goto_1
    aput-object v10, v4, v8

    add-int/lit8 v2, v2, 0x2

    iget v8, v0, Landroid/util/TypedValue;->type:I

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v2, -0x1

    iget v9, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public static getViewInstanceCount()J
    .locals 2

    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .locals 2

    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->getMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$IntToString;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v4

    if-ne v4, p2, :cond_1

    invoke-interface {v3}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public static invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v9, v2

    new-instance v10, Landroid/view/ViewDebug$5;

    move-object v2, v10

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, v9

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/ViewDebug$5;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewOverlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$performViewCapture$4(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ViewDebug$HardwareCanvasProvider;

    invoke-direct {v0}, Landroid/view/ViewDebug$HardwareCanvasProvider;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ViewDebug$SoftwareCanvasProvider;

    invoke-direct {v0}, Landroid/view/ViewDebug$SoftwareCanvasProvider;-><init>()V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, p1, v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "View"

    const-string v2, "Out of memory for bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    nop

    return-void

    :goto_2
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method static synthetic lambda$profileViewDraw$1(Landroid/view/View;Landroid/view/DisplayListCanvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic lambda$profileViewDraw$2(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic lambda$profileViewLayout$0(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method static synthetic lambda$profileViewOperation$3(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V
    .locals 5

    :try_start_0
    invoke-interface {p0}, Landroid/view/ViewDebug$ViewOperation;->pre()V

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    invoke-interface {p0}, Landroid/view/ViewDebug$ViewOperation;->run()V

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v3

    sub-long/2addr v3, v0

    aput-wide v3, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public static outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    return-void
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Landroid/graphics/Bitmap;

    new-instance v2, Landroid/view/-$$Lambda$ViewDebug$SYbJuwHeGrHQLha0YsHp4VI9JLg;

    invoke-direct {v2, p0, v1, p1, v0}, Landroid/view/-$$Lambda$ViewDebug$SYbJuwHeGrHQLha0YsHp4VI9JLg;-><init>(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xfa0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v1, v2

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    goto :goto_0

    :cond_0
    const-string v2, "-1 -1 -1"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    :goto_0
    const-string v2, "DONE."

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "View"

    const-string v4, "Problem profiling the view:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v2
.end method

.method private static profileViewAndChildren(Landroid/view/View;Landroid/view/RenderNode;Ljava/io/BufferedWriter;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p3, :cond_1

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/view/ViewDebug;->profileViewMeasure(Landroid/view/View;)J

    move-result-wide v2

    :goto_1
    if-nez p3, :cond_3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-wide v4, v0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {p0}, Landroid/view/ViewDebug;->profileViewLayout(Landroid/view/View;)J

    move-result-wide v4

    :goto_3
    const/16 v6, 0x20

    if-nez p3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    goto :goto_5

    :cond_5
    :goto_4
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->profileViewDraw(Landroid/view/View;Landroid/view/RenderNode;)J

    move-result-wide v0

    :goto_5
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_6

    move-object v6, p0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_6
    if-ge v9, v7, :cond_6

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, p1, p2, v8}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Landroid/view/RenderNode;Ljava/io/BufferedWriter;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ViewDebug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Landroid/view/RenderNode;Ljava/io/BufferedWriter;Z)V

    invoke-virtual {v0}, Landroid/view/RenderNode;->destroy()V

    return-void
.end method

.method private static profileViewDraw(Landroid/view/View;Landroid/view/RenderNode;)J
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v1, v2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v1

    :try_start_0
    new-instance v2, Landroid/view/-$$Lambda$ViewDebug$bI5XH5th0NpBuGdZohDPLEpO2Ek;

    invoke-direct {v2, p0, v1}, Landroid/view/-$$Lambda$ViewDebug$bI5XH5th0NpBuGdZohDPLEpO2Ek;-><init>(Landroid/view/View;Landroid/view/DisplayListCanvas;)V

    invoke-static {p0, v2}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    return-wide v2

    :catchall_0
    move-exception v2

    invoke-virtual {p1, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    throw v2

    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Landroid/view/-$$Lambda$ViewDebug$w986pBwzwNi77yEgLa3IWusjPNw;

    invoke-direct {v4, p0, v2}, Landroid/view/-$$Lambda$ViewDebug$w986pBwzwNi77yEgLa3IWusjPNw;-><init>(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-static {p0, v4}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-wide v4

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    throw v4
.end method

.method private static profileViewLayout(Landroid/view/View;)J
    .locals 2

    new-instance v0, Landroid/view/-$$Lambda$ViewDebug$inOytI2zZEgp1DJv8Cu4GjQVNiE;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$ViewDebug$inOytI2zZEgp1DJv8Cu4GjQVNiE;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static profileViewMeasure(Landroid/view/View;)J
    .locals 2

    new-instance v0, Landroid/view/ViewDebug$2;

    invoke-direct {v0, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .locals 8

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [J

    new-instance v2, Landroid/view/-$$Lambda$ViewDebug$5rTN0pemwbr3I3IL2E-xDBeDTDg;

    invoke-direct {v2, p1, v1, v0}, Landroid/view/-$$Lambda$ViewDebug$5rTN0pemwbr3I3IL2E-xDBeDTDg;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xfa0

    const-wide/16 v4, -0x1

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not complete the profiling of the view "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    :cond_0
    nop

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    return-wide v2

    :catch_0
    move-exception v2

    const-string v3, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    return-wide v4
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-ltz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    goto :goto_1

    :cond_0
    const-string v1, "NO_ID"

    :goto_1
    return-object v1
.end method

.method public static setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/view/ViewDebug$6;

    invoke-direct {v2, p0, v0}, Landroid/view/ViewDebug$6;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only integer layout parameters can be set. Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static stopHierarchyTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static stopRecyclerTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "[EXCEPTION]"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "4,null"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
