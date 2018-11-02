.class Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;
.super Ljava/lang/Object;
.source "OPTextInputLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->passwordVisibilityToggleRequested()V

    return-void
.end method
