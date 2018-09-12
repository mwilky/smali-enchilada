.class public Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;
.super Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    .line 1133
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;-><init>()V

    .line 1139
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1190
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 1233
    return-void
.end method

.method public setContentDescription(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .line 1237
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .line 1242
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1243
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->updateTab(I)V

    .line 1246
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    .line 1179
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1180
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1179
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1170
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    .line 1171
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->updateTab(I)V

    .line 1174
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .line 1213
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1204
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1205
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->updateTab(I)V

    .line 1208
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 1194
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1195
    return-void
.end method

.method public setTabListener(Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    .line 1159
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    .line 1160
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 1149
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    .line 1150
    return-object p0
.end method

.method public setText(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .line 1227
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1218
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1219
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->updateTab(I)V

    .line 1222
    :cond_0
    return-object p0
.end method
