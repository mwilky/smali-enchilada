.class final Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup$Closure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueAndSize"
.end annotation


# instance fields
.field public size:I

.field public value:J


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p2, Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_1

    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    iput-wide v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_1

    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_1

    :cond_4
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_1

    :cond_5
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    :cond_6
    :goto_1
    return-void
.end method
