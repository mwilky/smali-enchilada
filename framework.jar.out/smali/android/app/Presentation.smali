.class public Landroid/app/Presentation;
.super Landroid/app/Dialog;
.source "Presentation.java"


# static fields
.field private static final MSG_CANCEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Presentation"


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 4
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "theme"    # I

    .line 186
    invoke-static {p1, p2, p3}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 156
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/Presentation;->mToken:Landroid/os/IBinder;

    .line 339
    new-instance v0, Landroid/app/Presentation$2;

    invoke-direct {v0, p0}, Landroid/app/Presentation$2;-><init>(Landroid/app/Presentation;)V

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 359
    new-instance v0, Landroid/app/Presentation$3;

    invoke-direct {v0, p0}, Landroid/app/Presentation$3;-><init>(Landroid/app/Presentation;)V

    iput-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    .line 188
    iput-object p2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    .line 189
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 191
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 192
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 193
    .local v2, "attr":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Landroid/app/Presentation;->mToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 194
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 195
    const/16 v3, 0x77

    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    .line 196
    const/16 v3, 0x7f5

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 197
    invoke-virtual {p0, v1}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    .line 198
    return-void
.end method

.method static synthetic access$000(Landroid/app/Presentation;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Landroid/app/Presentation;

    .line 149
    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Presentation;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Presentation;

    .line 149
    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayRemoved()V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Presentation;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Presentation;

    .line 149
    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayChanged()V

    return-void
.end method

.method private static createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
    .locals 5
    .param p0, "outerContext"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "theme"    # I

    .line 305
    if-eqz p0, :cond_2

    .line 308
    if-eqz p1, :cond_1

    .line 312
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 313
    .local v0, "displayContext":Landroid/content/Context;
    if-nez p2, :cond_0

    .line 314
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 315
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103c0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 317
    iget p2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 324
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_0
    const-string/jumbo v1, "window"

    .line 325
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerImpl;

    .line 326
    .local v1, "outerWindowManager":Landroid/view/WindowManagerImpl;
    nop

    .line 327
    invoke-virtual {v1, v0}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/content/Context;)Landroid/view/WindowManagerImpl;

    move-result-object v2

    .line 328
    .local v2, "displayWindowManager":Landroid/view/WindowManagerImpl;
    new-instance v3, Landroid/app/Presentation$1;

    invoke-direct {v3, v0, p2, v2}, Landroid/app/Presentation$1;-><init>(Landroid/content/Context;ILandroid/view/WindowManagerImpl;)V

    return-object v3

    .line 309
    .end local v0    # "displayContext":Landroid/content/Context;
    .end local v1    # "outerWindowManager":Landroid/view/WindowManagerImpl;
    .end local v2    # "displayWindowManager":Landroid/view/WindowManagerImpl;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outerContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleDisplayChanged()V
    .locals 2

    .line 283
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    .line 290
    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const-string v0, "Presentation"

    const-string v1, "Presentation is being dismissed because the display metrics have changed since it was created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    .line 295
    :cond_0
    return-void
.end method

.method private handleDisplayRemoved()V
    .locals 0

    .line 278
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    .line 279
    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    .line 280
    return-void
.end method

.method private isConfigurationStillValid()Z
    .locals 2

    .line 298
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 299
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 300
    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 217
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onDisplayChanged()V
    .locals 0

    .line 275
    return-void
.end method

.method public onDisplayRemoved()V
    .locals 0

    .line 262
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 222
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 223
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 229
    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const-string v0, "Presentation"

    const-string v1, "Presentation is being dismissed because the display metrics have changed since it was created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 238
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 239
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 240
    return-void
.end method

.method public show()V
    .locals 0

    .line 249
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 250
    return-void
.end method
