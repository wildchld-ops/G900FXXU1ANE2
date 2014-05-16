.class Lcom/android/settings/grid/ExpandableListViewAdapter$1;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/grid/ExpandableListViewAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/grid/ExpandableListViewAdapter;

.field final synthetic val$groupPosition:I

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/settings/grid/ExpandableListViewAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter$1;->this$0:Lcom/android/settings/grid/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/android/settings/grid/ExpandableListViewAdapter$1;->val$parent:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/android/settings/grid/ExpandableListViewAdapter$1;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter$1;->val$parent:Landroid/view/ViewGroup;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v2, p0, Lcom/android/settings/grid/ExpandableListViewAdapter$1;->val$groupPosition:I

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v0

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedId()J

    move-result-wide v2

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
