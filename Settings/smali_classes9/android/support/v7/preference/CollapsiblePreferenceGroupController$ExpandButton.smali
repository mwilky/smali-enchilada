.class Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
.super Landroid/support/v7/preference/Preference;
.source "CollapsiblePreferenceGroupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/CollapsiblePreferenceGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpandButton"
.end annotation


# instance fields
.field private mId:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "parentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;J)V"
        }
    .end annotation

    .line 157
    .local p2, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-direct {p0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->initLayout()V

    .line 159
    invoke-direct {p0, p2}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setSummary(Ljava/util/List;)V

    .line 163
    const-wide/32 v0, 0xf4240

    add-long/2addr v0, p3

    iput-wide v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->mId:J

    .line 164
    return-void
.end method

.method private initLayout()V
    .locals 1

    .line 167
    sget v0, Landroid/support/v7/preference/R$layout;->expand_button:I

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setLayoutResource(I)V

    .line 168
    sget v0, Landroid/support/v7/preference/R$drawable;->ic_arrow_down_24dp:I

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setIcon(I)V

    .line 169
    sget v0, Landroid/support/v7/preference/R$string;->expand_button_title:I

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setTitle(I)V

    .line 171
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setOrder(I)V

    .line 172
    return-void
.end method

.method private setSummary(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    const/4 v0, 0x0

    .line 181
    .local v0, "summary":Ljava/lang/CharSequence;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "parents":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/PreferenceGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    .line 184
    .local v3, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 185
    .local v4, "title":Ljava/lang/CharSequence;
    instance-of v5, v3, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 186
    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/PreferenceGroup;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getParent()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    instance-of v5, v3, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    .line 190
    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/PreferenceGroup;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 195
    if-nez v0, :cond_3

    .line 196
    move-object v0, v4

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Landroid/support/v7/preference/R$string;->summary_collapsed_preference_list:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .end local v3    # "preference":Landroid/support/v7/preference/Preference;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_4
    :goto_1
    goto :goto_0

    .line 203
    :cond_5
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 214
    iget-wide v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->mId:J

    return-wide v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 208
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 210
    return-void
.end method
