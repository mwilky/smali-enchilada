.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$LaunchOptions;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$Builder;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$InvokeID;,
        Landroid/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field mInIdsBuffer:[J

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    iget-object v0, p0, Landroid/renderscript/Script;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/Allocation;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_1

    iget-object v3, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/renderscript/Type;->getZ()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    const-string v5, "API 20+ only allows simple 1D allocations to be used with bind."

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v9

    move/from16 v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    goto :goto_1

    :cond_2
    iget-object v11, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    move/from16 v16, p2

    invoke-virtual/range {v11 .. v16}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    :goto_1
    return-void
.end method

.method protected createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .locals 10

    iget-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$FieldID;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptFieldIDCreate(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/renderscript/Script$FieldID;

    iget-object v7, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v4, v3

    move-wide v5, v1

    move-object v8, p0

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/renderscript/Script$FieldID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    move-object v0, v3

    iget-object v3, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v3, Landroid/renderscript/RSDriverException;

    const-string v4, "Failed to create FieldID"

    invoke-direct {v3, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected createInvokeID(I)Landroid/renderscript/Script$InvokeID;
    .locals 10

    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$InvokeID;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/renderscript/Script$InvokeID;

    iget-object v7, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v4, v3

    move-wide v5, v1

    move-object v8, p0

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/renderscript/Script$InvokeID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    move-object v0, v3

    iget-object v3, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v3, Landroid/renderscript/RSDriverException;

    const-string v4, "Failed to create KernelID"

    invoke-direct {v3, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .locals 11

    iget-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$KernelID;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptKernelIDCreate(JII)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/renderscript/Script$KernelID;

    iget-object v7, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v4, v3

    move-wide v5, v1

    move-object v8, p0

    move v9, p1

    move v10, p2

    invoke-direct/range {v4 .. v10}, Landroid/renderscript/Script$KernelID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V

    move-object v0, v3

    iget-object v3, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v3, Landroid/renderscript/RSDriverException;

    const-string v4, "Failed to create KernelID"

    invoke-direct {v3, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "At least one of input allocation, output allocation, or LaunchOptions is required to be non-null."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-object v3, v0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    iget-object v5, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v3, v4

    :cond_2
    const-wide/16 v5, 0x0

    if-eqz v2, :cond_3

    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    :cond_3
    const/4 v7, 0x0

    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v7

    :cond_4
    move-object/from16 v16, v7

    const/4 v7, 0x0

    if-eqz p5, :cond_5

    const/4 v8, 0x6

    new-array v7, v8, [I

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    const/4 v4, 0x1

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    const/4 v4, 0x2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    const/4 v4, 0x3

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    const/4 v4, 0x4

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    const/4 v4, 0x5

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    :cond_5
    move-object v4, v7

    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v8}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    move/from16 v10, p1

    move-object v11, v3

    move-wide v12, v5

    move-object/from16 v14, v16

    move-object v15, v4

    invoke-virtual/range {v7 .. v15}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v6}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "At least one of ain or aout is required to be non-null."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    array-length v4, v1

    new-array v4, v4, [J

    move v5, v3

    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_4

    aget-object v6, v1, v5

    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    move-object v9, v4

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    :cond_5
    move-wide v14, v4

    const/4 v4, 0x0

    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    :cond_6
    const/4 v5, 0x0

    if-eqz p5, :cond_7

    const/4 v6, 0x6

    new-array v5, v6, [I

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    aput v6, v5, v3

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v3

    const/4 v6, 0x1

    aput v3, v5, v6

    const/4 v3, 0x2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    aput v6, v5, v3

    const/4 v3, 0x3

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    aput v6, v5, v3

    const/4 v3, 0x4

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    aput v6, v5, v3

    const/4 v3, 0x5

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    aput v6, v5, v3

    :cond_7
    move-object v3, v5

    iget-object v5, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    move/from16 v8, p1

    move-wide v10, v14

    move-object v12, v4

    move-object v13, v3

    invoke-virtual/range {v5 .. v13}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    return-void
.end method

.method public getVarB(I)Z
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVarD(I)D
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarD(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVarF(I)F
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarF(JI)F

    move-result v0

    return v0
.end method

.method public getVarI(I)I
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    return v0
.end method

.method public getVarJ(I)J
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarJ(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVarV(ILandroid/renderscript/FieldPacker;)V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nScriptGetVarV(JI[B)V

    return-void
.end method

.method protected invoke(I)V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    return-void
.end method

.method protected invoke(ILandroid/renderscript/FieldPacker;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nScriptInvokeV(JI[B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    :goto_0
    return-void
.end method

.method protected reduce(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    if-eqz v1, :cond_4

    array-length v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4

    if-eqz v2, :cond_3

    array-length v3, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v7, v1, v6

    iget-object v8, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v7}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v1

    new-array v3, v3, [J

    move v6, v5

    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_1

    aget-object v7, v1, v6

    iget-object v8, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    const/4 v6, 0x0

    if-eqz p4, :cond_2

    const/4 v7, 0x6

    new-array v6, v7, [I

    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v7

    aput v7, v6, v5

    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v6, v4

    const/4 v4, 0x2

    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v6, v4

    const/4 v4, 0x3

    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v6, v4

    const/4 v4, 0x4

    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v6, v4

    const/4 v4, 0x5

    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v6, v4

    :cond_2
    move-object v4, v6

    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v5, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v5}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    move/from16 v9, p1

    move-object v10, v3

    move-wide v11, v14

    move-object v13, v4

    invoke-virtual/range {v6 .. v13}, Landroid/renderscript/RenderScript;->nScriptReduce(JI[JJ[I)V

    return-void

    :cond_3
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "aout is required to be non-null."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "At least one input is required."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(J[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVar(ID)V
    .locals 6

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarD(JID)V

    return-void
.end method

.method public setVar(IF)V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(JIF)V

    return-void
.end method

.method public setVar(II)V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    return-void
.end method

.method public setVar(IJ)V
    .locals 6

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(JIJ)V

    return-void
.end method

.method public setVar(ILandroid/renderscript/BaseObj;)V
    .locals 7

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    if-nez p2, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v5, v4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    goto :goto_0

    :goto_1
    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(JIJ)V

    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;)V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nScriptSetVarV(JI[B)V

    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    .locals 8

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v3}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    move v3, p1

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[I)V

    return-void
.end method

.method public setVar(IZ)V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    return-void
.end method
