.class public Landroid/support/v17/leanback/widget/HeaderItem;
.super Ljava/lang/Object;
.source "HeaderItem.java"


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDescription:Ljava/lang/CharSequence;

.field private final mId:J

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/HeaderItem;->mId:J

    iput-object p3, p0, Landroid/support/v17/leanback/widget/HeaderItem;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v17/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HeaderItem;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HeaderItem;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/HeaderItem;->mId:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HeaderItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/HeaderItem;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/HeaderItem;->mDescription:Ljava/lang/CharSequence;

    return-void
.end method
