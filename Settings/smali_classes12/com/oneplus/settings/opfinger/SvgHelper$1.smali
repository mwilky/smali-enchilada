.class Lcom/oneplus/settings/opfinger/SvgHelper$1;
.super Landroid/graphics/Canvas;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/SvgHelper;->getPathsForViewport(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/SvgHelper;II)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

    iput p2, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$width:I

    iput p3, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$height:I

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/opfinger/SvgHelper$1;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/SvgHelper;->access$100(Lcom/oneplus/settings/opfinger/SvgHelper;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

    invoke-static {v4}, Lcom/oneplus/settings/opfinger/SvgHelper;->access$000(Lcom/oneplus/settings/opfinger/SvgHelper;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v2, v0, v3}, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$width:I

    return v0
.end method
