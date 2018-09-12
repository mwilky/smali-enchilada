.class Lcom/oneplus/settings/AodClockPreviewActivity$2;
.super Ljava/lang/Object;
.source "AodClockPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/AodClockPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/AodClockPreviewActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/AodClockPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .line 110
    iput-object p1, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-static {v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->access$100(Lcom/oneplus/settings/AodClockPreviewActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->finish()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-static {v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->access$200(Lcom/oneplus/settings/AodClockPreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-static {v1}, Lcom/oneplus/settings/AodClockPreviewActivity;->access$300(Lcom/oneplus/settings/AodClockPreviewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-static {v2}, Lcom/oneplus/settings/AodClockPreviewActivity;->access$400(Lcom/oneplus/settings/AodClockPreviewActivity;)I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-static {v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->access$500(Lcom/oneplus/settings/AodClockPreviewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "choose clock style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-static {v2}, Lcom/oneplus/settings/AodClockPreviewActivity;->access$400(Lcom/oneplus/settings/AodClockPreviewActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity$2;->this$0:Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->finish()V

    .line 121
    :cond_1
    :goto_0
    return-void
.end method
