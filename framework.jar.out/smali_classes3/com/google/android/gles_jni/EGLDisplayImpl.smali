.class public Lcom/google/android/gles_jni/EGLDisplayImpl;
.super Ljavax/microedition/khronos/egl/EGLDisplay;
.source "EGLDisplayImpl.java"


# instance fields
.field mEGLDisplay:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLDisplay;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget-wide v3, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    iget-wide v5, v2, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 7

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    return v1
.end method
