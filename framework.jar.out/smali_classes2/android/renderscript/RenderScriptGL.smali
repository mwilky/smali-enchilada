.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    }
.end annotation


# instance fields
.field mHeight:I

.field mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 25

    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object/from16 v14, p2

    invoke-direct {v0, v14}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v0, 0x0

    iput v0, v15, Landroid/renderscript/RenderScriptGL;->mWidth:I

    iput v0, v15, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScriptGL;->nDeviceCreate()J

    move-result-wide v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v12, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v5, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v6, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v7, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v8, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v9, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v10, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v11, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v4, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v3, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v1, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v2, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    const/16 v16, 0x0

    move-object v0, v15

    move/from16 v19, v1

    move/from16 v20, v2

    move-wide/from16 v1, v17

    move/from16 v21, v3

    move/from16 v3, v16

    move/from16 v16, v4

    move v4, v13

    move/from16 v22, v12

    move/from16 v12, v16

    move/from16 v23, v13

    move/from16 v13, v21

    move/from16 v14, v19

    move/from16 v15, v20

    move/from16 v16, v22

    invoke-virtual/range {v0 .. v16}, Landroid/renderscript/RenderScriptGL;->nContextCreateGL(JIIIIIIIIIIIIFI)J

    move-result-wide v0

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/renderscript/RenderScriptGL;->mContext:J

    iget-wide v0, v2, Landroid/renderscript/RenderScriptGL;->mContext:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    new-instance v0, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v0, v2}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, v2, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iget-object v0, v2, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSDriverException;

    const-string v1, "Failed to create RS context."

    invoke-direct {v0, v1}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragment(J)V

    return-void
.end method

.method public bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramRaster(J)V

    return-void
.end method

.method public bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramStore(J)V

    return-void
.end method

.method public bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramVertex(J)V

    return-void
.end method

.method public bindRootScript(Landroid/renderscript/Script;)V
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindRootScript(J)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    return v0
.end method

.method public pause()V
    .locals 0

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextPause()V

    return-void
.end method

.method public resume()V
    .locals 0

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextResume()V

    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :cond_0
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v0, v1

    :cond_0
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    return-void
.end method
