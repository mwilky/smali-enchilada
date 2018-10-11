.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$mf:I

.field final synthetic val$n:I

.field final synthetic val$nw:I

.field final synthetic val$w:[D


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V
    .locals 0

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$mf:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$n:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$a:[D

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$w:[D

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$nw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$mf:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$n:I

    :goto_0
    const/16 v3, 0x200

    if-le v2, v3, :cond_0

    shr-int/lit8 v2, v2, 0x2

    shl-int/lit8 v1, v1, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$a:[D

    sub-int v7, v0, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$w:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$nw:I

    sub-int v9, v3, v2

    move v5, v2

    invoke-static/range {v4 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$a:[D

    sub-int v7, v0, v2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$w:[D

    move v4, v2

    invoke-static/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V

    shr-int/lit8 v1, v1, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:I

    sub-int v11, v3, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$mf:I

    sub-int/2addr v3, v2

    :goto_1
    move v12, v3

    if-lez v12, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$a:[D

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:I

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$nw:I

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$w:[D

    move v4, v2

    move v5, v12

    move v6, v1

    invoke-static/range {v3 .. v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DII[D)I

    move-result v10

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$a:[D

    add-int v7, v11, v12

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$w:[D

    move v5, v10

    invoke-static/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V

    sub-int v3, v12, v2

    goto :goto_1

    :cond_1
    return-void
.end method
