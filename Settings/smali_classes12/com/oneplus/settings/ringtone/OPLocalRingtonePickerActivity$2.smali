.class Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "OPLocalRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    .line 182
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 187
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .line 188
    .local v0, "data":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v2, v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 189
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v2, v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$200(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Landroid/net/Uri;)V

    .line 190
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->stopThread()V

    .line 192
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$302(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    new-instance v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {v2, v3, v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)V

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$302(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    .line 195
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->start()V

    .line 196
    return-void
.end method
