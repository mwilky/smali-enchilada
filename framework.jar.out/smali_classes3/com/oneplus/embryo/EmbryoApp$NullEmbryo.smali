.class final Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;
.super Ljava/lang/Object;
.source "EmbryoApp.java"

# interfaces
.implements Lcom/oneplus/embryo/IEmbryoApp;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/embryo/EmbryoApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullEmbryo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/embryo/EmbryoApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/embryo/EmbryoApp$1;

    .line 179
    invoke-direct {p0}, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    return-void
.end method

.method public checkDecorLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkHWUI(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    return-void
.end method

.method public checkMainLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 201
    return-object p0
.end method

.method public run()V
    .locals 0

    .line 206
    return-void
.end method
