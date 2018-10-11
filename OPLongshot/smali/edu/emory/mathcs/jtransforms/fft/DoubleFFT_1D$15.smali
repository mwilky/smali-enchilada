.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;
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

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$mf:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$n:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$a:[D

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$w:[D

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$nw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$mf:I

    add-int/2addr v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$n:I

    :goto_0
    const/16 v2, 0x200

    if-le v1, v2, :cond_0

    shr-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$a:[D

    sub-int v6, v0, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$w:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$nw:I

    shr-int/lit8 v4, v1, 0x1

    sub-int v8, v2, v4

    move v4, v1

    invoke-static/range {v3 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$a:[D

    sub-int v6, v0, v1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$nw:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$w:[D

    move v3, v1

    invoke-static/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:I

    sub-int v10, v3, v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$mf:I

    sub-int/2addr v3, v1

    :goto_1
    move v11, v3

    if-lez v11, :cond_1

    add-int/lit8 v12, v2, 0x1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$a:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$w:[D

    move v3, v1

    move v4, v11

    move v5, v12

    invoke-static/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DII[D)I

    move-result v9

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$a:[D

    add-int v6, v10, v11

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$nw:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$w:[D

    move v4, v9

    invoke-static/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V

    sub-int v3, v11, v1

    move v2, v12

    goto :goto_1

    :cond_1
    return-void
.end method
