.class public Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPLocalRingtoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;,
        Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Ljava/util/List;

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 47
    if-nez p2, :cond_0

    .line 48
    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;

    invoke-direct {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;-><init>()V

    .line 49
    .local v0, "holdview":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d017f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    const v1, 0x1020016

    .line 52
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->mTitle:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0a0240

    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->button:Lcom/oneplus/lib/widget/button/OPRadioButton;

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    .end local v0    # "holdview":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;

    .line 59
    .restart local v0    # "holdview":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .line 61
    .local v1, "data":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;
    if-eqz v1, :cond_1

    .line 62
    iget-object v2, v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->mTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->button:Lcom/oneplus/lib/widget/button/OPRadioButton;

    iget-boolean v3, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->isCheck:Z

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setChecked(Z)V

    .line 66
    .end local v1    # "data":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;
    :cond_1
    return-object p2
.end method
