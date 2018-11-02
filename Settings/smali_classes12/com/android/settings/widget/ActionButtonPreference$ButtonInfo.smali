.class Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;
.super Ljava/lang/Object;
.source "ActionButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ActionButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ButtonInfo"
.end annotation


# instance fields
.field private mIsEnabled:Z

.field private mIsPositive:Z

.field private mIsVisible:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsPositive:Z

    iput-boolean v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsVisible:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mPositiveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mNegativeButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsPositive:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsPositive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsVisible:Z

    return p1
.end method

.method private setUpButton(Landroid/widget/Button;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method setUpButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mPositiveButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->setUpButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mNegativeButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->setUpButton(Landroid/widget/Button;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsVisible:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mIsPositive:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
