.class public Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/grid/ExpandableListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field adapter:Lcom/android/settings/grid/GridViewAdapter;

.field expandArrow:Landroid/widget/ImageView;

.field row:Landroid/widget/GridView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
