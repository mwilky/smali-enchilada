.class public final Landroid/webkit/WebViewDelegate;
.super Ljava/lang/Object;
.source "WebViewDelegate.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addWebViewAssetPath(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Landroid/webkit/WebViewFactory;->getLoadedPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    array-length v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x1

    add-int/2addr v5, v4

    new-array v4, v5, [Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v6, v2

    invoke-static {v2, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    add-int/lit8 v3, v5, -0x1

    aput-object v0, v4, v3

    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseResourcePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/app/ResourcesManager;->appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public callDrawGlFunction(Landroid/graphics/Canvas;J)V
    .locals 3

    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/DisplayListCanvas;->drawGLFunctor2(JLjava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a DisplayList canvas"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callDrawGlFunction(Landroid/graphics/Canvas;JLjava/lang/Runnable;)V
    .locals 3

    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/DisplayListCanvas;->drawGLFunctor2(JLjava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a DisplayList canvas"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canInvokeDrawGlFunctor(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public detachDrawGlFunctor(Landroid/view/View;J)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewRootImpl;->detachFunctor(J)V

    :cond_0
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getDataDirectorySuffix()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getDataDirectorySuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-static {p2, p1}, Landroid/webkit/LegacyErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 4

    nop

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public invokeDrawGlFunctor(Landroid/view/View;JZ)V
    .locals 0

    invoke-static {p2, p3, p4}, Landroid/view/ViewRootImpl;->invokeFunctor(JZ)V

    return-void
.end method

.method public isMultiProcessEnabled()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->isMultiProcessEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isTraceTagEnabled()Z
    .locals 2

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setOnTraceEnabledChangeListener(Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V
    .locals 1

    new-instance v0, Landroid/webkit/WebViewDelegate$1;

    invoke-direct {v0, p0, p1}, Landroid/webkit/WebViewDelegate$1;-><init>(Landroid/webkit/WebViewDelegate;Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method
