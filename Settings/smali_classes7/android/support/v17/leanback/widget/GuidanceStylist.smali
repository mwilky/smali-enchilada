.class public Landroid/support/v17/leanback/widget/GuidanceStylist;
.super Ljava/lang/Object;
.source "GuidanceStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FragmentAnimationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;
    }
.end annotation


# instance fields
.field private mBreadcrumbView:Landroid/widget/TextView;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mGuidanceContainer:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public getBreadcrumbView()Landroid/widget/TextView;
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDescriptionView()Landroid/widget/TextView;
    .locals 1

    .line 237
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "guidance"    # Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;

    .line 153
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onProvideLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "guidanceView":Landroid/view/View;
    sget v1, Landroid/support/v17/leanback/R$id;->guidance_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    .line 155
    sget v1, Landroid/support/v17/leanback/R$id;->guidance_breadcrumb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    .line 156
    sget v1, Landroid/support/v17/leanback/R$id;->guidance_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    .line 157
    sget v1, Landroid/support/v17/leanback/R$id;->guidance_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    .line 158
    sget v1, Landroid/support/v17/leanback/R$id;->guidance_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    .line 162
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getBreadcrumb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 175
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 183
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 184
    .local v1, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getBreadcrumb()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0xa

    if-nez v3, :cond_5

    .line 187
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getBreadcrumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    :cond_5
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 190
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    :cond_6
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 193
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :cond_7
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    .end local v1    # "contentDescription":Ljava/lang/CharSequence;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_8
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    .line 207
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    .line 208
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    .line 209
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    .line 210
    return-void
.end method

.method public onImeAppearing(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    return-void
.end method

.method public onImeDisappearing(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 268
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    return-void
.end method

.method public onProvideLayoutId()I
    .locals 1

    .line 221
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidance:I

    return v0
.end method
