.class Landroid/transition/Transition$1;
.super Landroid/transition/PathMotion;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 1
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .line 169
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 170
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 171
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    return-object v0
.end method
