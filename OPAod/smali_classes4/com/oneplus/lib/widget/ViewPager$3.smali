.class Lcom/oneplus/lib/widget/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/ViewPager;

    .line 209
    iput-object p1, p0, Lcom/oneplus/lib/widget/ViewPager$3;->this$0:Lcom/oneplus/lib/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager$3;->this$0:Lcom/oneplus/lib/widget/ViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/ViewPager;->access$000(Lcom/oneplus/lib/widget/ViewPager;I)V

    .line 212
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager$3;->this$0:Lcom/oneplus/lib/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ViewPager;->populate()V

    .line 213
    return-void
.end method
