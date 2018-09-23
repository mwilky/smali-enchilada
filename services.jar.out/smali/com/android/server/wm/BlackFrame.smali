.class public Lcom/android/server/wm/BlackFrame;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BlackFrame$BlackSurface;
    }
.end annotation


# instance fields
.field final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field final mForceDefaultOrientation:Z

.field final mInnerRect:Landroid/graphics/Rect;

.field final mOuterRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v13, 0x0

    move/from16 v14, p6

    iput-boolean v14, v10, Lcom/android/server/wm/BlackFrame;->mForceDefaultOrientation:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    :try_start_0
    iget v0, v11, Landroid/graphics/Rect;->top:I

    iget v1, v12, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_0

    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x0

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v11, Landroid/graphics/Rect;->left:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    iget v7, v12, Landroid/graphics/Rect;->right:I

    iget v8, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15

    :cond_0
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_1

    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x1

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v11, Landroid/graphics/Rect;->left:I

    iget v6, v12, Landroid/graphics/Rect;->top:I

    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15

    :cond_1
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_2

    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x2

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v12, Landroid/graphics/Rect;->left:I

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    iget v7, v11, Landroid/graphics/Rect;->right:I

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15

    :cond_2
    iget v0, v11, Landroid/graphics/Rect;->right:I

    iget v1, v12, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_3

    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x3

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v12, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    iget v7, v11, Landroid/graphics/Rect;->right:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v0, 0x1

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-nez v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public clearMatrix(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->clearMatrix(Landroid/view/SurfaceControl$Transaction;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hide(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public kill()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  BLACK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": DESTROY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Outer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v0, " / Inner: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " left="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " top="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlpha(Landroid/view/SurfaceControl$Transaction;F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
