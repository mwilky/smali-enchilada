.class Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "OPRadioGroup.java"

# interfaces
.implements Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/button/OPRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;Lcom/oneplus/lib/widget/button/OPRadioGroup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;-><init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-static {v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->access$300(Lcom/oneplus/lib/widget/button/OPRadioGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->access$302(Lcom/oneplus/lib/widget/button/OPRadioGroup;Z)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-static {v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->access$400(Lcom/oneplus/lib/widget/button/OPRadioGroup;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-static {v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->access$400(Lcom/oneplus/lib/widget/button/OPRadioGroup;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->access$500(Lcom/oneplus/lib/widget/button/OPRadioGroup;IZ)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->access$302(Lcom/oneplus/lib/widget/button/OPRadioGroup;Z)Z

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->access$600(Lcom/oneplus/lib/widget/button/OPRadioGroup;I)V

    return-void
.end method
