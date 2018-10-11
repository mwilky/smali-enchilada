.class Lcom/oneplus/lib/preference/PreferenceActivity$1;
.super Landroid/os/Handler;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->onGetNewHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v2, v1, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->findBestMatchingHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$200(Lcom/oneplus/lib/preference/PreferenceActivity;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eq v3, v2, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$200(Lcom/oneplus/lib/preference/PreferenceActivity;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$200(Lcom/oneplus/lib/preference/PreferenceActivity;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v4}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/lib/preference/PreferenceActivity;->findBestMatchingHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$000(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    nop

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
