.class Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;
.super Ljava/lang/Object;
.source "SearchSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/SearchSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalQuery"
.end annotation


# instance fields
.field mQuery:Ljava/lang/String;

.field mSubmit:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mSubmit:Z

    return-void
.end method
